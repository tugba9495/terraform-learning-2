resource "aws_instance" "terraform_instance" {
  ami           = data.aws_ami.ec2_ami.id
  instance_type = var.instance_type

  tags = {
    Name = var.tags}
  vpc_security_group_ids = [aws_security_group.terraform_security_group.id]
  iam_instance_profile = aws_iam_instance_profile.terraform-instance-profile.name
  
}

resource "aws_security_group" "terraform_security_group" {
  name        = "terraform-aws-sg"
  description = "allow ssh"
  vpc_id      = var.vpc_id

  tags = {
    Name = "sg_terraform_sg"
  }
}

resource "aws_security_group_rule" "ingress_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.terraform_security_group.id
}

resource "aws_security_group_rule" "egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.terraform_security_group.id
  cidr_blocks       = ["0.0.0.0/0"]
}
