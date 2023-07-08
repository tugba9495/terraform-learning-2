module "ec2_instance" {
    source = "../../child-module/ec2"
    ami = "ami-0fd61683ae1a27a64"
    instance_type = "t2.micro"
    key_name = "tugba_mac_key"
   
    
    
  
}
