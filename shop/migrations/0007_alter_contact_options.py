# Generated by Django 5.0.8 on 2024-10-06 02:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0006_rename_contact_id_contact_contacted'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='contact',
            options={'verbose_name_plural': 'Contact'},
        ),
    ]