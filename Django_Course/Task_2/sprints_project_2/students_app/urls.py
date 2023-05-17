from django.urls import path
from . import views

urlpatterns = [
	path('Hello/', views.Hello, name='Hello'),
	path('list/',views.list_view,name='list'),
]

