resource "aws_vpc" "vpc1" {
	cidr_block = var.cidr_block["cidr_vpc"]
	
	tags = {
		Name = var.tag_name
	}
}

resource "aws_internet_gateway" "igw1" {
	vpc_id = aws_vpc.vpc1.id
	
	tags = {
		Name = var.tag_name
	}
}

resource "aws_eip" "eip1" {
  domain   = "vpc"

	tags = {
		Name = var.tag_name
	}
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.subnet["public_subnet"].id
	depends_on = [aws_internet_gateway.igw1]
  
	tags = {
		Name = var.tag_name
	}
}

resource "aws_route_table" "public_rt1" {
	vpc_id = aws_vpc.vpc1.id
	route {
		cidr_block = var.cidr_block["any"]
		gateway_id = aws_internet_gateway.igw1.id
	}
  
	tags = {
		Name = var.tag_name
	}
}

resource "aws_route_table" "private_rt1" {
	vpc_id = aws_vpc.vpc1.id
	route {
		cidr_block = var.cidr_block["any"]
		nat_gateway_id = aws_nat_gateway.nat1.id
	}
	
	tags = {
		Name = var.tag_name
	}
}

resource "aws_route_table_association" "public_rt_attachment1" {
  subnet_id      = aws_subnet.subnet["public_subnet"].id
  route_table_id = aws_route_table.public_rt1.id
}

resource "aws_route_table_association" "private_rt_attachment1" {
  subnet_id      = aws_subnet.subnet["private_subnet"].id
  route_table_id = aws_route_table.private_rt1.id
}

resource "aws_security_group" "sg1" {
	name = var.tag_name
	description = "This security-group allows SSH and HTTP traffic"
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

	tags = {
		Name = var.tag_name
	}
}

resource "aws_subnet" "subnet" {
	for_each = var.subnets
	vpc_id = aws_vpc.vpc1.id
	cidr_block = each.value.cidr_block
	map_public_ip_on_launch = each.value.is_public

	tags = {
		Name = var.tag_name
	}
}

resource "aws_instance" "instance" {
	for_each = var.subnets
	ami = var.instance_specs["ami"]
	instance_type = var.instance_specs["instance_type"]
	associate_public_ip_address = var.is_public["public"]
	subnet_id = aws_subnet.subnet[each.key].id
	#subnet_id = [aws_subnet.subnet[count.index].id]
	vpc_security_group_ids = [aws_security_group.sg1.id]
	user_data = <<EOF
#!/bin/bash
sudo apt update
sudo apt install -y nginx
EOF
	
	tags = {
		Name = var.tag_name
	}
}

