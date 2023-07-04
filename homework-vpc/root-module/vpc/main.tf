module "aws_vpc" {
    source = "../../child-module/vpc"
    name = "terraform_vpc"
    cidr = "10.0.0.0/16"
    
  
}
