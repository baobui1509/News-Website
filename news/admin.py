from django.contrib import admin
from .define import *


from .models import Category, Article, Feed, Contact

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'status', 'is_homepage', 'layout', 'ordering')
    # prepopulated_fields = {'slug': ('name',)}
    list_filter = ['is_homepage', 'status', 'layout']
    search_fields = ['name']
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS

class ArticleAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'status', 'ordering', 'special')
    # prepopulated_fields = {'slug': ('name',)}
    list_filter = ['status', 'special', 'category']
    search_fields = ['name']
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS

class FeedAdmin(admin.ModelAdmin):
    list_display = ('name', 'status', 'ordering')
    # prepopulated_fields = {'slug': ('name',)}
    list_filter = ['status']
    search_fields = ['name']
    class Media:
        js = ADMIN_SRC_JS
    
# @admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'created', 'status_display', 'message', 'admin_message')
    search_fields = ('name', 'email')
    list_filter = ('status',)
    def status_display(self, obj):
        return obj.status
    status_display.boolean = True 
    status_display.short_description = 'Status'
    class Media: 
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS
    
    
admin.site.register(Category, CategoryAdmin) 
admin.site.register(Article, ArticleAdmin) 
admin.site.register(Feed, FeedAdmin) 
admin.site.register(Contact, ContactAdmin)
admin.site.site_header = ADMIN_HEADER_NAME
