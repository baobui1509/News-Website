# Generated by Django 5.0.8 on 2024-10-03 13:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0002_remove_product_planting_methods_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='product',
            options={'verbose_name_plural': 'Product'},
        ),
        migrations.AlterField(
            model_name='product',
            name='price_real',
            field=models.DecimalField(decimal_places=0, editable=False, max_digits=10),
        ),
        migrations.AlterField(
            model_name='product',
            name='total_sold',
            field=models.IntegerField(default=0, editable=False),
        ),
    ]
