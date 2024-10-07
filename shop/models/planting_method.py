from django.db import models
from tinymce.models import HTMLField
from news.helpers import *
from shop.custom_field import CustomBooleanField
from shop.define import *
from django.urls import reverse

# class Item(models.Model):
#     name = models.CharField(max_length=100)
#     description = models.TextField()

#     def __str__(self):
#         return self.name

class PlantingMethod(models.Model):
    name = models.CharField(unique=True, max_length=100)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAULT)
    ordering = models.IntegerField(default=0)
    
    class Meta:
        verbose_name_plural = TABLE_PLANTING_METHOD_SHOW
        
    def __str__(self):
        return self.name