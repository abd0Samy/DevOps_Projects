from django.db import models

class Student(models.Model):
	f_name=models.CharField(max_length=255) #first column
	l_name=models.CharField(max_length=255) #second column
	mobile=models.IntegerField(null=True)	#third column
	birth_date=models.DateField(null=True)	#fourth column

class Course(models.Model):
	c_name=models.CharField(max_length=255) 			#first column
	c_id=models.CharField(max_length=255,null=True)		#second column
	c_start_date=models.DateField(null=True)			#third column
	c_end_date=models.DateField(null=True)				#fourth column