from django import forms			#import forms class from django
#from django import ModelForm
from . models import Student	#import Student Model from models.py

class StudentForm(forms.ModelForm):		#create a Model Form
	class Meta:							#specify the name of model to use
		model=Student
		fields=["username","gender","text","mobile","birth_date"]

	#this function will be used for the validation
	def clean(self):	
		# data from the form is fetched using super function
		super(StudentForm,self).clean()  #bttcheck l 7aga l ana katbha fel model tmam wla msh tmam

		#extract the username and text field from the data if clean (from models.py)
		username=self.cleaned_data.get('username')
		text=self.cleaned_data.get('text')

		#condition to be met for the username length and for the text length
		if len(username) < 5:
			self._errors['username']=self.error_class([
				'Minimum 5 characters required'])
		if len(text) <10:
			self._errors['text']=self.error_class([
				'Text should contain a minimum of 10 characters'])

		#return any errors if found
		return self.cleaned_data