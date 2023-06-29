resource "aws_instance" "my_instance" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data = file("userdata.sh")

  tags = {
    Name = var.tags
  }



}

resource "aws_security_group" "mysecuritygroup" {
    name = "mysecuritygroup"
    description = "allow ssh inbound traffic"
    
    
  ingress {
    description = "allows port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-sg"
  }
}
