from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('<int:datengruppenid>/', views.datendetail, name='datengruppendetail'),
    path('datengruppen/', views.datengruppen, name='datengruppen')
]