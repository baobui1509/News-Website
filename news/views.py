from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from .models import Category, Article, Feed, Author, Tag
from django.utils import timezone
from django.core.paginator import Paginator
import re
import feedparser
import json
import requests
from requests_toolbelt.adapters.ssl import SSLAdapter
from bs4 import BeautifulSoup
from .define import *
from .forms import ContactForm
from django.http import JsonResponse
from django.core.cache import cache
# import ssl

# ssl._create_default_https_context = ssl._create_unverified_context


def index(request):
    items_article_special = Article.objects.filter(special=True, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')[:SETTING_ARTICLE_TOTAL_ITEMS_SPECIAL]
    items_category = Category.objects.filter(status="public", is_homepage=True).order_by('ordering')
    for category in items_category:
        category.article_filter = category.article_set.filter(status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')[0:2]
        
    return render(request, APP_PATH_PAGES + 'index.html', {
        'title_page': "Trang chủ",
        'items_article_special': items_article_special,
        'items_category': items_category
    })

def category(request, category_slug):
    item_category = get_object_or_404(Category, slug=category_slug, status=APP_VALUE_STATUS_ACTIVE)
    items_article = Article.objects.filter(category=item_category, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')
    
    paginator = Paginator(items_article, SETTING_ARTICLE_TOTAL_ITEMS_PER_PAGE)
    
    page = request.GET.get('page')
    
    items_article = paginator.get_page(page)
    
    
    return render(request, APP_PATH_PAGES + 'category.html', {
        'title_page': item_category.name,
        "item_category": item_category,
        'items_article': items_article,
        'paginator': paginator
    })

def article(request, article_slug, article_id):
    item_article = get_object_or_404(Article, id=article_id, slug=article_slug, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now())
    items_article_related = Article.objects.filter(category=item_article.category, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date').exclude(slug=article_slug)[:SETTING_ARTICLE_TOTAL_ITEMS_RELATED]
    return render(request, APP_PATH_PAGES + 'article.html', {
        'title_page': item_article.name,
        'item_article': item_article,
        'items_article_related': items_article_related,
        'author': item_article.author
    })
    
def feed(request, feed_slug):
    item_feed = get_object_or_404(Feed, slug=feed_slug, status=APP_VALUE_STATUS_ACTIVE)
    session = requests.Session()
    session.mount('https://', SSLAdapter())
    feed_url = item_feed.link
    response = session.get(feed_url, verify=False)
    feed = feedparser.parse(response.content)
    url_list = cache.get('url_list')
    items_feed = cache.get('items_feed')
    if ((not url_list) or (url_list and feed_url not in url_list)):
        print('NO')
        items_feed = []
        url_list = url_list if url_list else []
        url_list.append(feed_url)
        for entry in feed.entries:
            soup = BeautifulSoup(entry.summary, 'html.parser')
            img_tag = soup.find('img')
            src_img = APP_VALUE_IMAGE_DEFAULT
            if img_tag:
                src_img = img_tag['src']
            item = {
                'title': entry.title,
                'link': entry.link,
                'pub_date': entry.published,
                'img': src_img
            }
            items_feed.append(item)
        
        cache.set('items_feed', items_feed, 60 * 60)
        cache.set('url_list', url_list, 60 * 60)
    else:
        print('YES')

    # with open('feed.json', 'w', encoding='utf-8') as f:
    #     json.dump(feed, f, ensure_ascii=False)
    return render(request, APP_PATH_PAGES + 'feed.html', {
        'title_page': "Tin tức tổng hợp " + item_feed.name,
        'items_feed': items_feed,
        'item_feed': item_feed
    })

def search(request):
    keyword = request.GET.get('keyword')
    items_article = Article.objects.filter(name__contains=keyword, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')
    paginator = Paginator(items_article, SETTING_ARTICLE_TOTAL_ITEMS_PER_PAGE)
    
    page = request.GET.get('page')
    
    items_article = paginator.get_page(page)
    return render(request, APP_PATH_PAGES + 'search.html', {
        'title_page': "Tìm kiếm cho từ khoá: " + keyword,
        'keyword': keyword,
        'items_article': items_article,
        'paginator': paginator
    })
    
def about(request):
    
    return render(request, APP_PATH_PAGES + 'about.html', {
            'title_page': "Giới thiệu"
           
        })
    
# def contact(request):
#     form = ContactForm()
#     return render(request, 'contact.html', {
#         'form': form,
#         'success_message': request.session.pop('success_message', None),
#         'error_message': request.session.pop('error_message', None)
#     })

# def contact(request):
#     if request.method == 'POST':
#         form = ContactForm(request.POST)
#         if form.is_valid():
#             form.save()  # Lưu dữ liệu vào database
#             # Set success message in session
#             request.session['success_message'] = 'Gửi lời nhắn thành công!'
#             request.session['error_message'] = None
#         else:
#             # Set error message in session
#             request.session['success_message'] = None
#             request.session['error_message'] = form.errors
#         return redirect('contact')  # Chuyển hướng sau khi gửi form thành công
#     else:
#         # Reset messages if not POST
#         request.session['success_message'] = None
#         request.session['error_message'] = None
#         form = ContactForm()
        
#     return render(request, 'contact.html', {
#         'form': form,
#         'success_message': request.session.pop('success_message', None),
#         'error_message': request.session.pop('error_message', None)
#     })

# def contact(request):
#     form = ContactForm()
    
#     print(request.POST)
    
#     if request.method == 'POST':
#         form = ContactForm(request.POST)  # Tạo form với dữ liệu POST
#         if form.is_valid():
#             form.save()  # Lưu dữ liệu vào database
#             request.session['success_message'] = 'Gửi lời nhắn thành công!'
#             return redirect('contact')  # Chuyển hướng về trang contact để hiển thị thông báo
#         else:
#             # Đặt thông báo lỗi vào session
#             request.session['error_message'] = form.errors
            
    
#     success_message = request.session.pop('success_message', None)  # Lấy thông báo thành công từ session
#     error_message = request.session.pop('error_message', None)  # Lấy thông báo lỗi từ session
    
#     return render(request, 'contact.html', {
#         'form': form,
#         'success_message': success_message,
#         'error_message': error_message
#     })
    
def contact(request):
    return render(request, 'contact.html', {})
    
def post_contact(request):
    form = ContactForm()
    
    
    if request.method == 'POST':
        response_data = {}
        form = ContactForm(request.POST)  # Tạo form với dữ liệu POST
        if form.is_valid():
            form.save()  # Lưu dữ liệu vào database
            response_data = {'status': 'success'}
        else:
            # xu ly gui loi ve cho client
            response_data = {'status': 'error', 'errors': form.errors}
        return JsonResponse(response_data)

def get_articles_by_category(request):
    # category id
    # offset
    print(request.GET)
    category_id = request.GET['category_id']
    offset = request.GET['offset']
    ## viet xu ly lay danh sach bai viet theo category_id, offset + 2:offset + 4
    start = int(offset) + 2
    end = int(offset) + 4
    
    items_article = Article.objects.filter(category=category_id, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')
    
    loadMoreDisabled = False
    if (end >= len(items_article)):
        end = len(items_article)
        loadMoreDisabled = True
        
    items_article = items_article[start:end]
    # bien doi du lieu
    data = []
    for item in items_article:
        data.append({
            'name': item.name,
            'link': item.get_absolute_url(),
            'image': item.image.url,
            'content': item.content
        })
    
    response_data = {"loadMoreDisabled": loadMoreDisabled, "data": data}
    
    return JsonResponse(response_data)  

def author(request, slug, id):
    author = get_object_or_404(Author, id=id, slug=slug)
    return render(request, 'author.html', {'author': author})

def get_tags(request):
    tags = Tag.objects.values_list('name', flat=True)
    return JsonResponse(list(tags), safe=False)
    
def add_tag(request):
    if request.method == 'POST':
        tag_name = request.POST.get('tag_name')
        if tag_name:
            tag, created = Tag.objects.get_or_create(name=tag_name)  # Tạo tag nếu chưa tồn tại
            return JsonResponse({'success': created, 'tag_id': tag.id, 'tag_name': tag.name})
    return JsonResponse({'error': 'Invalid request'}, status=400)
    