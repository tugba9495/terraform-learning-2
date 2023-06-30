resource "aws_instance" "my_instance" {
  ami           = "ami-04ceee5659211731a"
  instance_type = "t2.micro"
  tags = {
    Name = "myinstance"
  }
  vpc_security_group_ids = [aws_security_group.my_security_group3.id]

}