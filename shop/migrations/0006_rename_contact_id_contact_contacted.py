# Generated by Django 5.0.8 on 2024-10-04 03:48

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0005_contact'),
    ]

    operations = [
        migrations.RenameField(
            model_name='contact',
            old_name='contact_id',
            new_name='contacted',
        ),
    ]
