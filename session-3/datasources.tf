data "aws_ami" "amazon_linux_2023" {
   most_recent = true
   owners = [ "amazon"]
   filter {
     name = "name"
     values = ["al2023-ami-2023.1.20230629.0-kernel-6.1-x86_64"]
     
   }
  

}