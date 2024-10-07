from django.db import models
from tinymce.models import HTMLField
from news.helpers import *
from news.custom_field import CustomBooleanField
from news.define import *
from django.urls import reverse
from .category import Category
from django.utils.text import slugify
from django.utils.html import mark_safe


class Author (models.Model):
    name = models.CharField(unique=True, max_length=100)
    slug = models.SlugField(unique=True, max_length=100)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
    image = models.ImageField(upload_to=get_file_path)
    phone_number = models.CharField(max_length=15, blank=True, null=True)
    email = models.EmailField(unique=True)
    class Meta:
        verbose_name_plural = TABLE_AUTHOR_SHOW
        
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("article", kwargs={"article_slug": self.slug})
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name) 
        super(Author, self).save(*args, **kwargs)
        
    def image_tag(self):
        if self.image:
            return mark_safe(f'<img src="{self.image.url}" width="100" height="100" />')
        return "No Image"