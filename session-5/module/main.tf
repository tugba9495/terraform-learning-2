resource "aws_instance" "my_instance" {
  
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  tags = {
    Name = format("%s-instance",var.env)
  }
}
resource "aws_security_group" "instance_sg" {
    name =  "test_security_group"
  
}
resource "aws_security_group_rule" "my_security_ingress_rule" {
    count = length(var.security_group_port)
    type = "ingress"
    from_port = element(var.security_group_port, count.index)
    to_port = element(var.security_group_port, count.index)
    protocol = "tcp"
    cidr_blocks = [element(var.security_group_cidr, count.index)]
    security_group_id = aws_security_group.instance_sg.id


  
}
resource "aws_security_group_rule" "my_security_egress_rule" {
    
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
    security_group_id = aws_security_group.instance_sg.id


  
}