from django.db import models
from tinymce.models import HTMLField
from news.helpers import *
from shop.custom_field import *
from shop.define import *
from django.urls import reverse
from django.utils.timezone import now

class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=20)
    message = models.TextField()
    contacted = CustomBooleanContact()
    message_admin = models.TextField(blank=True)
    created = models.DateTimeField(default=now)
    class Meta:
        verbose_name_plural = TABLE_CONTACT_SHOW
        
    def __str__(self):
        return self.name
