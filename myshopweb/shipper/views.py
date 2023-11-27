from django.views import generic
from orders.models import Order
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.views.decorators.cache import never_cache
from django.utils.decorators import method_decorator 
from django.http import HttpResponseForbidden

decorators = [never_cache, login_required(login_url='/')]
@method_decorator(decorators, name='dispatch')
class ShipperView(generic.ListView):
    model = Order
    context_object_name = 'shippers'
    template_name = 'shipper.html'
    def get(self, request, *args, **kwargs):
        shippers = Order.objects.all()        
        context = {
            'shippers': shippers,
        }
        user = request.user
        if user.is_authenticated:
            if user.is_shipper:
                return render(request, 'shipper.html',context)
            else:
                return HttpResponseForbidden()
    def post(self,request, *args, **kwargs):
        data = request.POST
        status = data['status']
        id = data['shipper_id']
        order = Order.objects.filter(id=id)
        order.update(status=status)
        return redirect('/shipper/')
    class Meta:
        ordering = ('id')
        
    
    