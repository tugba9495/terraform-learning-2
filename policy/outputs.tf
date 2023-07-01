output "aws_instance" {
    value = aws_instance.terraform_instance.public_ip
  
}
output "aws_instance_private" {
    value = aws_instance.terraform_instance.private_ip
  
}
