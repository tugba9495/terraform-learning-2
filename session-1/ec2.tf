resource "aws_instance" "myec2instance" {
  ami           = "ami-04ceee5659211731a"
  instance_type = "t2.micro"
  tags = {
    Name        = "myec2instance"
    Environment = "dev"
  }
  key_name = "tugba@mac-key"
  security_groups = ["default"]


}