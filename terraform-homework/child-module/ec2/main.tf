resource "aws_instance" "terraform_instance" {
  ami = var.ami
  key_name = var.key_name
  
  instance_type = var.instance_type
  tags = {
    Name = "terraform_instance"
    
  }
}
resource "aws_security_group" "terraform_sg_homework" {
  name        = "terraform_sg_homework"
  description = "Allow ssh"
  vpc_id      = "vpc-05a1891d5c5b38233"
   
    
  }
  resource "aws_security_group_rule" "security_group_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [var.cidr_block]
  
  security_group_id = aws_security_group.terraform_sg_homework.id
}
resource "aws_security_group_rule" "security_group_rule_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          ="-1"
  cidr_blocks       = ["0.0.0.0/0"]
  
  security_group_id = aws_security_group.terraform_sg_homework.id
}


  