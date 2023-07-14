resource "aws_security_group" "terraform_sg_homework" {
  name        = replace(local.name, "rtype","new-sg")
  description = "Allow ssh"
  vpc_id      = "vpc-0e07184f7d721ff67"
  tags = merge(
    local.common_tags,
    { Name = replace(local.name, "rtype", "new-sg")}
  )
    
    
  
    
  }
  resource "aws_security_group_rule" "security_group_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  
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
resource "aws_security_group_rule" "security_group_rule_80" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  
  security_group_id = aws_security_group.terraform_sg_homework.id

}
  