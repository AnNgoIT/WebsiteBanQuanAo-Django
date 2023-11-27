from django.contrib import admin
from product.models import Product, Category
# Register your models here.

class SettingProductAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'price', 'product_img', 'status')
    list_display_links = ('id', 'name', 'price', 'product_img', 'status')
    list_filter = ('category_id','manufacturer_id',)
    list_per_page = 5
    sortable_by = ['id']
    search_fields = ('name',)



class SettingCategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    # list_filter = ('id')
    list_per_page = 5
    sortable_by = ['id']
    search_fields = ('name',)

admin.site.register(Product, SettingProductAdmin)
admin.site.register(Category, SettingCategoryAdmin)