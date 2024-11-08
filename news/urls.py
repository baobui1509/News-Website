from django.urls import path, include, re_path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name='index'),
    # path('article/<slug:article_slug>', views.article, name="article"),
    re_path(r'^(?P<article_slug>[\w-]+)-a(?P<article_id>\d+)\.html$', views.article, name='article'),
    # path('feed/<slug:feed_slug>', views.feed, name="feed"),
    re_path(r'tin-tuc-tong-hop-(?P<feed_slug>[\w-]+)\.html$', views.feed, name='feed'),
    path('search.html', views.search, name="search"),
    path('about.html', views.about, name="about"),
    path('contact.html', views.contact, name="contact"),
    path('tac-gia/<slug:slug>-<int:id>/', views.author, name='author'),
    path('post_contact', views.post_contact, name="post_contact"),
    path('api/get-tags/', views.get_tags, name='get_tags'),
    path('api/add-tag/', views.add_tag, name='add-tag'),
    path('chu-de/<slug:slug>', views.tag_detail, name='tag_detail'),
    path('get_articles_by_category', views.get_articles_by_category, name="get_articles_by_category"),
    path('tinymce/', include('tinymce.urls')),
    path('<slug:category_slug>.html', views.category, name="category")
    
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


