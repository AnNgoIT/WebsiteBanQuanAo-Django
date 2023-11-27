from django.urls import path
from .views import ShipperView

app_name = 'shipper'
urlpatterns = [
    path('',ShipperView.as_view(), name='shipper_page')
]