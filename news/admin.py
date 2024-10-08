from django.contrib import admin
from .define import *
from django import forms
from .models import Category, Article, Feed, Contact, Author, Tag
from django.db.models import QuerySet


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
        fields = '__all__'  # Thêm các trường cần thiết

    # Override clean_tag để cho phép tạo tag mới
    def clean_tag(self):
        tags = self.cleaned_data.get('tag', '')
        print('tags', tags)
        tag_names = [tag.strip() for tag in tags.split(',') if tag.strip()]
        
        tag_objects = []
        for tag_name in tag_names:
            tag_obj, created = Tag.objects.get_or_create(name=tag_name)
            tag_objects.append(tag_obj)

        return tag_objects



class ArticleAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'status', 'ordering', 'special', 'author', 'get_tags')
    autocomplete_fields = ['tag']
    list_filter = ['status', 'special', 'category', 'author']
    search_fields = ['name']
    # form = ArticleAdminForm
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS
        
    @admin.display(description='Tags') 
    def get_tags(self, obj):
        tags = [ tag.name for tag in obj.tag.all()]
        return ', '.join(tags)
        

        
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
