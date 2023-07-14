resource "aws_instance" "terraform_instance" {
  ami                    = var.ami
  vpc_security_group_ids = [aws_security_group.terraform_sg_homework.id]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2_server_key_pair.id
  tags                   = {
    Name                 = replace(local.name, "rtype", "ec2instance")
  }
  user_data              = file("userdata.sh")


provisioner "file" { # we send this file to ec2 instance that we are creating now using provisioner function
    source = "/Users/tugbayildirim/terraform-learning-2/terraform-homework/provisioner/index.html"#where does your file exist #this file in the local
    destination = "/tmp/index.html" # we send this file inside this folder
    connection {
      type = "ssh"
      user = "ec2-user" # user is ec2-user
      host = self.public_ip # since it is in same block we can use this function ,"self" means entire blocks it will get public ipprivate_key
      private_key = file("~/.ssh/id_rsa")
 } 

}
provisioner "remote-exec" { # this script will run remote ec2 instance in the remote 
    inline = [ 
        "sudo yum install httpd -y",
        "sudo systemctl start httpd ",
        "sudo systemctl enable httpd ",
        "sudo cp /tmp/index.html /var/www/html/index.html"
     ]
     connection {
      type = "ssh"
      user = "ec2-user" # user is ec2-user
      host = self.public_ip # since it is in same block we can use this function ,"self" means entire blocks it will get public ipprivate_key
      private_key = file("~/.ssh/id_rsa")
 } 


  
}
}
resource "aws_key_pair" "ec2_server_key_pair" {
  
  key_name                = replace(local.name,"rtype", "ec2_server_key_pair")
  public_key              = file("~/.ssh/id_rsa.pub")
}

resource "null_resource" "local_script" { #null_resource will help you to run local exec 
    provisioner "local-exec" {
      command = "touch terraform.file"
    }
  
}
