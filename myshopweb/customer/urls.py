from django.urls import path,include
from django.contrib.auth.views import LoginView
from django.contrib.auth.views import LogoutView
from .views import *
app_name = 'customer'

urlpatterns = [ 
    path("register/",RegisterView.as_view(template_name="register.html"),name="register"),
    path('', include('social_django.urls', namespace='social')),
    path('login/', LoginView.as_view(template_name = 'login.html'),name="login"),
    path('logout/', LogoutView.as_view(next_page = '/',),name="logout"),
    path('profile/',ProfileView.as_view(),name="profile"),
    path('password-change/', PasswordChangeView.as_view(),name='password-change'),
    path("reset_password/", RessetPassWordView.as_view(), name="reset_password"),
    path('OTP_pr/', OTPPasswordResetView.as_view(), name="OTP_passwordreset"),
    path('OTP_rg/', OTPRegisterView.as_view(), name="OTP_register"),
    path('reset_confirm/',
         RessetPassWordConfirmView.as_view(),
         name='password_reset_confirm'),
    path("password_reset_complete/",PasswordResetCompleteView.as_view(template_name='password_reset_complete.html'),name="password_reset_complete")
]