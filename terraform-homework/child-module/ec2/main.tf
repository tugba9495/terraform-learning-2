resource "aws_instance" "terraform_instance" {
  ami = var.ami
  key_name = var.key_name
  
  instance_type = var.instance_type
  user_data = file("${path.module}/template_file/user_data.sh")
  tags = {
    Name = "terraform_instance"
    
  }
}
resource "aws_security_group" "terraform_sg_homework" {
  name        = "terraform_sg_homework"
  description = "Allow ssh"
  vpc_id      = var.vpc_id
    
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


  