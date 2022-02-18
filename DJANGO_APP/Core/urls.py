"""Core URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
import view as view
from django.contrib import admin
from django.contrib.auth import views as auth_views
from django.contrib.staticfiles.storage import staticfiles_storage# used to select the right storage backend, based in settings.STATICFILES_STORAGE variable’s value.
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView#It also uses the Generic Class Based View django.views.generic.base.RedirectView to redirect to the specified URL.
from users import views as user_views
from django.conf.urls.i18n import i18n_patterns
from django.utils.translation import gettext_lazy as _
from job_posts import views


urlpatterns = [
    path("favicon.ico", RedirectView.as_view(url=staticfiles_storage.url("favicon.ico")),),
    path('selectlanguage', user_views.selectlanguage, name='selectlanguage'),
    path('i18n/', include('django.conf.urls.i18n')),
]  + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

urlpatterns += i18n_patterns(
    path(_('admin/'), admin.site.urls),
    path('register/', user_views.register, name='register'),
    path('profile/', user_views.profile, name='profile'),
    path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    path('password-reset/',
         auth_views.PasswordResetView.as_view(
             template_name='users/password_reset.html'
         ),
         name='password_reset'),
    path('password-reset/done/',
         auth_views.PasswordResetDoneView.as_view(
             template_name='users/password_reset_done.html'
         ),
         name='password_reset_done'),
    path('password-reset-confirm/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(
             template_name='users/password_reset_confirm.html'
         ),
         name='password_reset_confirm'),
    path('password-reset-complete/',
         auth_views.PasswordResetCompleteView.as_view(
             template_name='users/password_reset_complete.html'
         ),
         name='password_reset_complete'),
    path('', include('blog.urls')),
    path('job_postings', views.all_job_postings, name="list-jobs"),
    path('search_jobs', views.search_jobs, name="search-jobs"),
    # path('login/', user_views.CustomLogin.as_view(template_name='users/login.html'), name='login'),
)


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)




