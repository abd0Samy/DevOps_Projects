tag_name="Sprints_Terraform_Task_2"

cidr_block = {
	"cidr_vpc"=				"10.0.0.0/16"
	"any"				 =	"0.0.0.0/0"
}

is_public = {
	"public"="true"
	"private"="false"
}

subnets = {
	"public_subnet1"	= {cidr_block = "10.0.0.0/24", is_public = true} 
	"public_subnet2"	= {cidr_block = "10.0.2.0/24", is_public = true} 
	"private_subnet1"	= {cidr_block = "10.0.1.0/24", is_public = false}
	"private_subnet2"	= {cidr_block = "10.0.3.0/24", is_public = false}
}

instance_specs = {
	"ami" = "ami-053b0d53c279acc90"
	"instance_type" = "t2.micro"
}