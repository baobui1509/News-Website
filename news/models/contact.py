from django.db import models
from news.custom_field import CustomBooleanField
from news.define import *
from django.utils.timezone import now


class Contact(models.Model):
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=100)
    created = models.DateTimeField(default=now)
    status = CustomBooleanField(choices=APP_VALUE_STATUS_CONTACT_CHOICES, default=APP_VALUE_STATUS_CONTACT_DEFAULT)
    message = models.CharField(max_length=500)
    admin_message = models.TextField(max_length=500, default='', blank=True)
    
    class Meta:
        verbose_name_plural = TABLE_CONTACT_SHOW
        
    def __str__(self):
        return self.name