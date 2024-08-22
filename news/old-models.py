# from django.db import models
# from tinymce.models import HTMLField
# from .helpers import *
# from .custom_field import CustomBooleanField
# from .define import *
# from django.urls import reverse

# class Category(models.Model):
#     name = models.CharField(unique=True, max_length=100)
#     slug = models.SlugField(unique=True, max_length=100)
#     is_homepage = CustomBooleanField(default=False)
#     layout = models.CharField(max_length=10, choices=APP_VALUE_LAYOUT_CHOICES, default=APP_VALUE_LAYOUT_DEFAULT)
#     status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
#     ordering = models.IntegerField(default=0)
    
#     class Meta:
#         verbose_name_plural = TABLE_CATEGORY_SHOW
        
#     def __str__(self):
#         return self.name
    
#     def get_absolute_url(self):
#         return reverse("category", kwargs={"category_slug": self.slug})


    
# class Article (models.Model):
#     name = models.CharField(unique=True, max_length=100)
#     slug = models.SlugField(unique=True, max_length=100)
#     status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
#     ordering = models.IntegerField(default=0)
#     special = CustomBooleanField(default=False)
#     publish_date = models.DateTimeField()
#     content = HTMLField()
#     image = models.ImageField(upload_to=get_file_path)
#     category = models.ForeignKey(Category, on_delete=models.CASCADE)
    
#     class Meta:
#         verbose_name_plural = TABLE_ARTICLE_SHOW
        
#     def __str__(self):
#         return self.name
    
#     def get_absolute_url(self):
#         return reverse("article", kwargs={"article_slug": self.slug, 'article_id': self.id})
    
    
# class Feed(models.Model):
#     name = models.CharField(unique=True, max_length=100)
#     slug = models.SlugField(unique=True, max_length=100)
#     status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
#     ordering = models.IntegerField(default=0)
#     link = models.CharField(max_length=250)
    
#     class Meta:
#         verbose_name_plural = TABLE_FEED_SHOW
        
#     def __str__(self):
#         return self.name
    
#     def get_absolute_url(self):
#         return reverse("feed", kwargs={"feed_slug": self.slug})
    