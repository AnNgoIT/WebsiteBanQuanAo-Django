from django.contrib import admin
from orders.models import Order, OrderItem
from django.contrib.auth.models import Group
from django_rest_passwordreset.models import ResetPasswordToken
from social_django.models import UserSocialAuth, Association, Nonce
 
# Register your models here.


class OrderItemTabuler(admin.TabularInline):
    model = OrderItem
    extra = 0
    raw_id_fields = ['product', ]


@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ['name', 'total_prices',
                    'address', 'pin_code', 'city', 'status']
    list_filter = ['created', 'status']
    raw_id_fields = ['user']
    list_editable = ['status']
    inlines = [OrderItemTabuler]
    list_per_page = 24

admin.site.unregister(Group)
admin.site.unregister(ResetPasswordToken)
admin.site.unregister(UserSocialAuth)
admin.site.unregister(Association)
admin.site.unregister(Nonce)
