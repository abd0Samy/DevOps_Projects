from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from . models import Student
from . forms import StudentForm


def home(request):
	#check if the request is POST
	if request.method=='POST':
		#pass the form data to the form class
		details=StudentForm(request.POST)
		#in the StudentForm class, the clean function is defined, if all the data is correct as per
		# the clean function, it returns TRUE
		if details.is_valid():
			#temporarily make an object to add some logic into the data if there is such a need
			# before writing to the database
			post=details.save(commit=False)
			#Finally write the changes into the database
			post.save()
			#redirect it to some another page indicating data was inserted successfully
			return HttpResponse("data submitted successfully")
		else:
			#redirect back to the same page if the data was invalid
			return render(request,"home.html",{'form':details})
	else:
		#if the request is a GET request then, create an empty form object and render it into the page
		form=StudentForm(None)
		return render(request,'home.html',{'form':form})

# def home_view(request):
# 	form=StudentForm(request.POST or None)
# 	if form.is_valid():
# 		form.save()				#save the form data to model
# 	context={}
# 	context["StudentForm"]=StudentForm()
# 	return render(request,"home.html",context)

def list_view(request):
	context={}
	context["dataset"]=Student.objects.all()
	return render(request,"list_view.html",context)


def Hello(request):
	template=loader.get_template('show.html')
	return HttpResponse(template.render())
	#return HttpResponse("Welcome to our site")