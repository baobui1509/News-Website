from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from .models import Category, Article, Feed
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

def index(request):
    items_article_special = Article.objects.filter(special=True, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')[:SETTING_ARTICLE_TOTAL_ITEMS_SPECIAL]
    items_category = Category.objects.filter(status="public", is_homepage=True).order_by('ordering')
    for category in items_category:
        category.article_filter = category.article_set.filter(status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')
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
        'items_article_related': items_article_related
    })
    
def feed(request, feed_slug):
    item_feed = get_object_or_404(Feed, slug=feed_slug, status=APP_VALUE_STATUS_ACTIVE)
    session = requests.Session()
    session.mount('https://', SSLAdapter())
    feed_url = item_feed.link
    response = session.get(feed_url)
    feed = feedparser.parse(response.content)
    
    items_feed = []
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
    
def contact(request):
    form = ContactForm()
    return render(request, 'contact.html', {
        'form': form,
        'success_message': request.session.pop('success_message', None),
        'error_message': request.session.pop('error_message', None)
    })

def contact_process(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()  # Lưu dữ liệu vào database
            # Set success message in session
            request.session['success_message'] = 'Gửi lời nhắn thành công!'
            request.session['error_message'] = None
        else:
            # Set error message in session
            request.session['success_message'] = None
            request.session['error_message'] = form.errors
        return redirect('contact')  # Chuyển hướng sau khi gửi form thành công
    else:
        # Reset messages if not POST
        request.session['success_message'] = None
        request.session['error_message'] = None
        form = ContactForm()
        
    return render(request, 'contact.html', {
        'form': form,
        'success_message': request.session.pop('success_message', None),
        'error_message': request.session.pop('error_message', None)
    })
    
    