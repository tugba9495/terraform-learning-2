resource "aws_security_group" "my_security_group3" {
  name        = "mysecuritygroup3"
  description = "allow ssh"
  vpc_id      = "vpc-0e07184f7d721ff67"

}
resource "aws_security_group_rule" "inbound_rule" {

  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_security_group3.id


}
resource "aws_security_group_rule" "outbound_rule" {

  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_security_group3.id


}