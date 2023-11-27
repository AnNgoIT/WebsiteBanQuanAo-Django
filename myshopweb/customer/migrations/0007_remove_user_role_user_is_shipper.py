# Generated by Django 4.1.3 on 2022-11-21 06:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0006_user_role'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='role',
        ),
        migrations.AddField(
            model_name='user',
            name='is_shipper',
            field=models.BooleanField(default=False, null=True),
        ),
    ]