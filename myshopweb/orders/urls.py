from django.urls import path
from .views import CreateOrder,MyOrders,OrderDetails,OrderInvoice

app_name = 'orders'
urlpatterns = [
    path('place', CreateOrder.as_view(), name='place'),
    path('my', MyOrders.as_view(), name='my'),
    path('details/<int:pk>/', OrderDetails.as_view(), name='details'),
    path('invoice/<int:pk>/',OrderInvoice.as_view(), name='invoice'),
]
