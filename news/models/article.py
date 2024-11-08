from django.db import models
from tinymce.models import HTMLField
from news.helpers import *
from news.custom_field import CustomBooleanField
from news.define import *
from django.urls import reverse
from .category import Category
from .author import Author
from .tag import Tag


class Article (models.Model):
    name = models.CharField(unique=True, max_length=100)
    slug = models.SlugField(unique=True, max_length=100)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
    ordering = models.IntegerField(default=0)
    special = CustomBooleanField(default=False)
    publish_date = models.DateTimeField()
    content = HTMLField()
    image = models.ImageField(upload_to=get_file_path)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    author = models.ForeignKey(Author, on_delete=models.CASCADE, null=True)
    tag = models.ManyToManyField(Tag, blank=True)
    class Meta:
        verbose_name_plural = TABLE_ARTICLE_SHOW
        
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("article", kwargs={"article_slug": self.slug, 'article_id': self.id})