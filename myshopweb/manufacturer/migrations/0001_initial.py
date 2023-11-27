# Generated by Django 4.0.4 on 2022-09-14 03:40

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Manufacturer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('phone', models.CharField(max_length=20)),
                ('address', models.CharField(max_length=100)),
                ('image', models.ImageField(upload_to='images/manufacturers')),
                ('status', models.IntegerField(blank=True, default=0)),
            ],
        ),
    ]
