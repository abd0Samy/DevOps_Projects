resource "aws_vpc" "vpc1" {
	cidr_block = "10.0.0.0/16"
	tags = {
		Name = "vpc1"
	}
}

resource "aws_internet_gateway" "igw1" {
	vpc_id = aws_vpc.vpc1.id
	tags = {
		Name = "igw1"
	}
}

resource "aws_subnet" "subnet1" {
	vpc_id = aws_vpc.vpc1.id
	cidr_block = "10.0.0.0/24"
	map_public_ip_on_launch = "true"

	tags = {
		Name = "subnet1"
	}
}

resource "aws_route_table" "rt1" {
	vpc_id = aws_vpc.vpc1.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.igw1.id
	}
	tags = {
		Name = "rt1"
	}
}

resource "aws_route_table_association" "rt_attachment1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_security_group" "sg1" {
	name = "security-group-1"
	description = "allows http traffic on port 80"
	vpc_id = aws_vpc.vpc1.id
	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}


	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}

resource "aws_instance" "instance1" {
	ami = "ami-053b0d53c279acc90"
	instance_type = "t2.micro"
    associate_public_ip_address = true
	subnet_id = aws_subnet.subnet1.id
	vpc_security_group_ids = [
		aws_security_group.sg1.id
	]
	user_data = <<EOF
#!/bin/bash
sudo apt update
sudo apt install -y apache2
EOF
	
	tags = {
		Name = "instance1"
	}
}