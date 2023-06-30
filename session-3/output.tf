output "my_instance_public_ip" {
  value = aws_instance.my_instance.public_ip

}
output "myec2instance_state" {
    value = aws_instance.my_instance.instance_state
  
}
