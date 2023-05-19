from django.db import models

class Student(models.Model):

	GENDER_CHOICES=(
		('M','Male'),
		('F','Female')
	)
	
	username=models.CharField(max_length=20,blank=False,null=False) 			#first column
	text=models.TextField(blank=False,null=False)								#second column
	gender=models.CharField(max_length=6,choices=GENDER_CHOICES,default='Male') #third column
	mobile=models.IntegerField()												#fourth column
	birth_date=models.DateField(null=True)										#fifth column
	time=models.DateTimeField(auto_now_add=True)								#sixth column
