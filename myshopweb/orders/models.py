from django.db import models
from django.conf import settings
from django.urls import reverse
from product.models import Product

# Create your models here.

choices = (
    ('Đang chờ xác nhận', 'Đang chờ xác nhận'),
    ('Đã xác nhận đơn hàng','Đã xác nhận đơn hàng'),
    ('Đang giao hàng', 'Đang giao hàng'),
    ('Giao hàng thành công', 'Giao hàng thành công')
)


class Order(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             related_name='orders', on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=150, blank=False, null=False)
    phone = models.CharField(max_length=20)
    pin_code = models.CharField(max_length=10)
    city = models.CharField(max_length=50)
    paid = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    status = models.CharField(
        choices=choices, max_length=50, default='Đang chờ xác nhận')
    total_price = models.FloatField(null=False, blank=False)


    class Meta:
        ordering = ('-created',)

    def __str__(self):
        return f'Order {self.id}'

    def get_absolute_url(self):
        return reverse('orders:invoice', kwargs={'pk': self.pk})
    @property
    def total_prices(self):
        return '{:20,d}'.format(int(self.total_price)) + ' VNĐ'

class OrderItem(models.Model):
    order = models.ForeignKey(
        Order, related_name='items', on_delete=models.CASCADE)
    product = models.ForeignKey(
        Product, related_name='ordered', on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    total = models.FloatField(null=False, blank=False)

    def __str__(self):
        return f'Order Item {self.id}'
