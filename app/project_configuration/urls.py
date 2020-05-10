from django.contrib import admin
from django.urls import path, include


DJANGO_ADMIN_BASE_URL = 'admin-control-center/'


urlpatterns = [
    path(DJANGO_ADMIN_BASE_URL, admin.site.urls),
    # path('example/', include('example.urls')),
]
