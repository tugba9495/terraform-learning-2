resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.amazon_linux_2023.id
  count = 2
  instance_type = var.instance_type
  tags = {
    Name = "myinstance"
  }
  vpc_security_group_ids = [aws_security_group.my_security_group3.id]

}