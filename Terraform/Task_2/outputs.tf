output "public_instance_ip" {
	value = aws_instance.public_instance1.public_ip
}

output "private_instance_ip" {
	value = aws_instance.private_instance1.private_ip
}
