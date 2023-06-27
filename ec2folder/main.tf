resource "aws_instance" "terraform_aws_ec2" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "terraform_aws_ec2"
  }
  user_data = var.user_data



}
resource "aws_security_group" "terraform_sg" {
  name        = "terraform_sg_aws_test"
  description = "allow ssh inbound traffic"
  vpc_id      = ""


}
resource "aws_vpc_security_group_ingress_rule" "terraform_ingress-rule" {
  security_group_id = aws_security_group.terraform_sg.id
  cidr_ipv4 = "10.0.0.0/8"
  from_port         = 22
  to_port           = 80
  ip_protocol       = "tcp"


}