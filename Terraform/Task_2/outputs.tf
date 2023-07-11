output "public_instance_ip" {
	value = aws_instance.instance["public_subnet"].public_ip
}

output "private_instance_ip" {
	value = aws_instance.instance["private_subnet"].private_ip
}
