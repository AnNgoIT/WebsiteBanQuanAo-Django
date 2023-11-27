from django.views import generic
from django.utils.decorators import method_decorator 
from django.views.decorators.cache import never_cache
from .models import User
from django.contrib.auth.views import LoginView
from django.contrib.auth.forms import PasswordResetForm
from django.contrib.auth import authenticate,login
from django.contrib.auth.hashers import make_password
from django.contrib.auth.decorators import login_required
from django.shortcuts import render,redirect
import django.contrib.messages as messages
from django.template.loader import render_to_string
import re
from django.db.models.query_utils import Q
import smtplib, ssl
from email.message import EmailMessage
from django.contrib.auth import views as auth_views
from functools import update_wrapper
from django.http import Http404
from django.views.decorators.cache import never_cache
from django.views.decorators.csrf import csrf_protect

import math, random
# Create your views here.
def admin_view(view, cacheable=False):
    """
    Overwrite the default admin view to return 404 for not logged in users.
    """
    def inner(request, *args, **kwargs):
        if (not request.user.is_active and not request.user.is_staff) or not request.user.is_shipper:
            raise Http404()
        return view(request, *args, **kwargs)

    if not cacheable:
        inner = never_cache(inner)

    # We add csrf_protect here so this function can be used as a utility
    # function for any view, without having to repeat 'csrf_protect'.
    if not getattr(view, 'csrf_exempt', False):
        inner = csrf_protect(inner)

    return update_wrapper(inner, view)


def generateOTP() :
     digits = "0123456789"
     OTP = ""
     for i in range(6) :
         OTP += digits[math.floor(random.random() * 10)]
     return OTP

decorators1 = [never_cache,]
@method_decorator(decorators1, name='dispatch')
class ProfileView(generic.ListView):
    model = User
    context_object_name = 'user'
    template_name = 'profile.html'
    queryset = User.objects.all()
    def get(self, request, *args, **kwargs):
        return render(request,'profile.html')
    
    def post(self,request, *args, **kw):
        data = request.POST      
          
        User.objects.filter(email=data['email']).update(full_name =data['full_name']
        ,phone_number=data['phone_number'],date =data['date'],address=data['address'])
        return render(request,'profile.html')
    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        return super(ProfileView, self).dispatch(*args, **kwargs)


decorators2 = [never_cache, login_required(login_url='/')]
@method_decorator(decorators2, name='dispatch')
class PasswordChangeView(generic.ListView):
    model = User
    context_object_name = 'user_password'
    template_name = 'password_change.html'
    queryset = User.objects.all()    
    def post(self,request, *args, **kw):
            data = request.POST
            current_user = request.user
            u = User.objects.get(email = current_user.email)
            u_password =User.objects.filter(email = current_user.email)
            if current_user.is_authenticated:
                if(data['new_password'] == data ['new_password_again']):       
                    if(u.check_password(data['old_password'])):
                        new_password = make_password(data['new_password'])                
                        u_password.update(password=new_password)
                        return render(request,'password_change_done.html')
                    else:
                        messages.error(request, 'Sai mật khẩu!')
                        return render(request,'password_change.html')
                else:
                    messages.error(request, 'Không khớp mật khẩu!')
                    return render(request,'password_change.html')
            else:
                return redirect('/')
    def __str__(self):
        return self.username

decorators3 = [never_cache]
@method_decorator(decorators3, name='dispatch')
class LoginView(LoginView):
    model = User
    context_object_name = 'customer'
    template_name = 'login.html'
    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            username = request.POST['username']
            password = request.POST['password']
            u_exists = User.objects.filter(username=username).exists()
            if u_exists:
                u_get = User.objects.get(username=username)
                checkuser = u_get.check_password(password)
                if checkuser:
                    try:
                        login(request, u_get,backend='django.contrib.auth.backends.ModelBackend')
                    except:
                        raise Http404
                    if u_get.is_superuser:
                        return redirect('/admin')
                    elif u_get.is_shipper:
                        return redirect('/shipper')
                    else:
                        return redirect('/')
                else:
                    messages.error(request, 'Sai tài khoản hoặc mật khẩu!')
                    return render(request,'login.html')                 
            else:
                messages.error(request, 'Tài khoản không tồn tại!')
                return render(request,'login.html')

decorators4 = [never_cache]
@method_decorator(decorators4, name='dispatch')        
class RegisterView(generic.ListView):
    model = User
    template_name = 'register.html'
    
    def post(self, request, *args, **kwargs):       
        username = request.POST['username']
        email = request.POST.get('email',False)
        password = request.POST['password']
        password_again =request.POST['password_again']
        username_check = User.objects.filter(username=username).exists()
        email_check = User.objects.filter(email=email).exists()
        if password == password_again:
            if len(username) > 150 or re.search(r'[^_\.!@#$%^&*()]',username) == None or re.search(r'[^_\.!@#$%^&*()]',password) == None:
                messages.error(request,"Tài khoản hoặc mật khẩu không phù hợp!")
                return render(request,'register.html')
            if username_check:
                messages.error(request,"Tài khoản đã tồn tại!")
                return render(request,'register.html')
            if email_check:
                messages.error(request,"Email đã tồn tại!")
                return render(request,'register.html')
            else:
                request.session['username'] = username
                request.session['password'] = password
                request.session['email'] = email
                request.session['check'] = False
                msg = EmailMessage()       
                msg["Subject"] = "Đăng ký tài khoản"
                msg["From"] = "thoitrangvietductest@gmail.com"
                msg["To"] = email
                context=ssl.create_default_context()
                email_template_name = "password_reset_email.txt"
                c = {                      
                'OTP': generateOTP(),
                }
                request.session['otp'] = c['OTP']
                request.session['check'] = False
                email = render_to_string(email_template_name, c)
                try:
                    msg.set_content(email)
                    with smtplib.SMTP("smtp.gmail.com", port=587) as smtp:
                        smtp.starttls(context=context)
                        smtp.login(msg["From"], "oqouljvofoeccdsy")
                        smtp.send_message(msg)
                    return redirect('customer:OTP_register')
                except:
                    messages.error(request,"Không hợp lệ!")
                    return render(request,'register.html')

               
            
        else: 
            messages.error(request, 'Không khớp mật khẩu!')
            return render(request,'register.html')
   
class RessetPassWordView(auth_views.PasswordResetView):
    model = User
    template_name = 'password_reset_form.html'
    def post(self, request, *args, **kwargs): 	
        msg = EmailMessage()       
        msg["Subject"] = "Đổi mới mật khẩu"
        msg["From"] = "thoitrangvietductest@gmail.com"
        data = request.POST['email']
        request.session['email'] = data
        request.session['check'] = True
        msg["To"] = data
        context=ssl.create_default_context()
        password_reset_form = PasswordResetForm(request.POST)
        if password_reset_form.is_valid():
            data = password_reset_form.cleaned_data['email']
            associated_users = User.objects.filter(Q(email=data))
            if associated_users.exists():
                for user in associated_users:
                    email_template_name = "password_reset_email.txt"
                    c = {                      
                    'OTP': generateOTP(),
                    }
                    request.session['otp'] = c['OTP']
                    email = render_to_string(email_template_name, c)
                    try:
                        msg.set_content(email)
                        with smtplib.SMTP("smtp.gmail.com", port=587) as smtp:
                            smtp.starttls(context=context)
                            smtp.login(msg["From"], "oqouljvofoeccdsy")
                            smtp.send_message(msg)
                        return redirect('customer:OTP_passwordreset')
                    except:
                        messages.error(request,"Không hợp lệ!")
            else:
                messages.error(request,"Không tồn tại email!")
                return render(request,'password_reset_form.html')

        password_reset_form = PasswordResetForm()

class OTPPasswordResetView(generic.ListView):
    model = User
    template_name = 'OTP.html'
    def post(self,request, *args, **kwargs):
        data = request.POST['otp']
        otp = data
        if otp == request.session['otp'] and request.session['check']:
            return redirect('customer:password_reset_confirm')
        else:
            messages.error(request,'Sai mã OTP!')
            return render(request,'OTP.html')

class OTPRegisterView(generic.ListView):
    model = User
    template_name = 'OTP.html'
    def post(self,request, *args, **kwargs):
        data = request.POST['otp']
        otp = data
        if otp == request.session['otp'] and not request.session['check']:
            new_password = make_password(request.session['password'])
            queryset=User.objects.create(username= request.session['username']
            , email= request.session['email'], password=new_password)
            queryset.save()
            return redirect('customer:login')
        else:
            messages.error(request,'Sai mã OTP!')
            return render(request,'OTP.html')

class RessetPassWordConfirmView(generic.ListView):
    model = User
    template_name = 'password_reset_confirm.html'
    def post(self, request, *args,**kwargs):
        u_password =User.objects.filter(email = request.session['email'])   
        password1 = request.POST['new_password1']
        password2 = request.POST['new_password2']
        if(password1 == password2):       
            new_password = make_password(password1)                
            u_password.update(password=new_password)
            return render(request,'password_reset_complete.html')
        else:
            messages.error(request, 'Không khớp mật khẩu!')
            return render(request,'password_reset_confirm.html')



class PasswordResetCompleteView(generic.ListView):
    model = User
    template_name ='password_reset_complete.html' 
    context_object_name = 'user_complete'



