module "vpc" {
  source                    = "../../child-module/vpc"
  vpc_cidr_block            = "10.0.0.0/16"
  env                       = "dev"
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr_bloks = ["10.0.10.0/24", "10.0.11.0/24"]
  aws_internet_gateway      = "myinternet gateway"
  aws_route_table           = "publicroutetable"
  aws_route_table_private   = "privateroutetable"
  aws_nat_gateway           = "natgatway"
  cidr_block                = "0.0.0.0/0"
  
}
