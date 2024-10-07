from django.db import models
from news.helpers import *
from news.custom_field import CustomBooleanField
from news.define import *
from django.urls import reverse
from .category import Category
from django.utils.text import slugify


class Tag (models.Model):
    name = models.CharField(unique=True, max_length=100)
    slug = models.SlugField(unique=True, max_length=100)
    class Meta:
        verbose_name_plural = TABLE_TAG_SHOW
        
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("article", kwargs={"article_slug": self.slug, 'article_id': self.id})
        