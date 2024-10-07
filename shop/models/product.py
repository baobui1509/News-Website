from django.db import models
from tinymce.models import HTMLField
from news.helpers import *
from shop.custom_field import CustomBooleanField
from shop.define import *
from django.urls import reverse
from .category import Category
from .planting_method import PlantingMethod


class Product (models.Model):
    name = models.CharField(unique=True, max_length=100)
    slug = models.SlugField(unique=True, max_length=100)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
    ordering = models.IntegerField(default=0)
    special = CustomBooleanField(default=False)
    price = models.DecimalField(max_digits=10, decimal_places=0)
    price_sale = models.DecimalField(max_digits=10, decimal_places=0, null=True, blank=True)
    price_real = models.DecimalField(max_digits=10, decimal_places=0, editable=False)
    total_sold = models.IntegerField(default=0, editable=False)
    summary = models.TextField()
    content = HTMLField()
    image = models.ImageField(upload_to=get_file_path)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    planting_methods = models.ManyToManyField(PlantingMethod)
    class Meta:
        verbose_name_plural = TABLE_PRODUCT_SHOW
        
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("product", kwargs={"product_slug": self.slug, 'product_id': self.id})

    def save(self, *args, **kwargs):
        if (self.price_sale):
            self.price_real = self.price_sale
        else:
            self.price_real = self.price
        super().save(*args, **kwargs)