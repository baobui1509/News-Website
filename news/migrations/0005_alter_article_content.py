# Generated by Django 5.0.8 on 2024-08-08 11:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0004_article'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='content',
            field=models.TextField(),
        ),
    ]
