from django.contrib import admin
from .define import *
from django import forms
from .models import Category, Article, Feed, Contact, Author, Tag

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'status', 'is_homepage', 'layout', 'ordering')
    # prepopulated_fields = {'slug': ('name',)}
    list_filter = ['is_homepage', 'status', 'layout']
    search_fields = ['name']
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS

class ArticleAdminForm(forms.ModelForm):
    class Meta:
        model = Article
        fields = '__all__'  

    # Tùy chỉnh widget của trường 'tag' thành TextInput để dùng với Tagify
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['tag'].widget = forms.TextInput(attrs={'class': 'tagify-input'})
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'status', 'ordering', 'special', 'author')
    autocomplete_fields = ['tag']
    list_filter = ['status', 'special', 'category', 'author']
    search_fields = ['name']
    form = ArticleAdminForm
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
        
    def has_add_permission(self, request):
        return False
    
class AuthorAdmin(admin.ModelAdmin):
    fields = ('name', 'slug', 'status', 'image', 'phone_number', 'email')
    list_display = ('image_tag', 'name', 'slug', 'status', 'phone_number', 'email')
    list_filter = ['status']
    search_fields = ['name']
    
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS
        
class TagAdmin(admin.ModelAdmin):
    fields = ('name', 'slug')
    list_display = ('name', 'slug')
    search_fields = ['name']
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS
    
admin.site.register(Category, CategoryAdmin) 
admin.site.register(Article, ArticleAdmin) 
admin.site.register(Feed, FeedAdmin) 
admin.site.register(Contact, ContactAdmin)
admin.site.register(Author, AuthorAdmin)
admin.site.register(Tag, TagAdmin)
admin.site.site_header = ADMIN_HEADER_NAME
