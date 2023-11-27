from django.contrib import admin
from customer.models import User
# Register your models here.

class SettingAdmin(admin.ModelAdmin):
    list_display = ('id', 'username','is_superuser','email')
    list_display_links = ('id', 'username','is_superuser','email')
    ordering = ['id']
    search_fields = ('username',)
admin.site.register(User, SettingAdmin)