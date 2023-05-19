from django.urls import path
from . import views

urlpatterns = [
	path('Hello/', views.Hello, name='Hello'),
	path('list/',views.list_view,name='list'),
	#path('home/',views.home_view,name='home'),
	path('home/',views.home,name='home'),
]