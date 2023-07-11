output "public_instance_ip" {
	value = aws_instance.instance["public_subnet1"].public_ip
}

output "private_instance_ip" {
	value = aws_instance.instance["private_subnet1"].private_ip
}
