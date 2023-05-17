from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from . models import Student,Course

def list_view(request):
	context={}
	context["studentsset"]=Student.objects.all()
	context["coursesset"]=Course.objects.all()
	return render(request,"list_view.html",context)

def Hello(request):
	template=loader.get_template('show.html')
	return HttpResponse(template.render())
	#return HttpResponse("Welcome to our site")