# Generated by Django 4.1.3 on 2023-11-27 14:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0004_product_quantiy'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='quantiy',
            field=models.IntegerField(blank=True),
        ),
    ]
