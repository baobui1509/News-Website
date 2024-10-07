from django.forms.widgets import RadioSelect
from django.db import models

class CustomBooleanField(models.BooleanField):
    def formfield(self, **kwargs):
        kwargs['widget'] = RadioSelect(choices=((True, 'Yes'), (False, 'No')))
        kwargs['initial'] = False
        
        return super().formfield(**kwargs)
    
class CustomBooleanContact(models.BooleanField):
    def formfield(self, **kwargs):
        kwargs['widget'] = RadioSelect(choices=((True, 'Đã liên hệ'), (False, 'Chưa liên hệ')))
        kwargs['initial'] = False
        
        return super().formfield(**kwargs)