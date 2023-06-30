resource "aws_instance" "my_instance" {
    ami = "ami-04ceee5659211731a"
    instance_type = "t2.micro"
    tags = {
      Name = "myinstance"
    }

}