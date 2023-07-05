variable "vpc_cidr_block" {
  type = string
  description = "cidr block for the vpc"
}
variable "env" {
    type = string
    description = "represent the environment"
  
}
variable "public_subnet_cidr_blocks" {
  
  type = list(string)
  description = "creates publicsubnet"
  default = []
}
variable "tags" {
  type    = map(string)
  default = {}
}
variable "private_subnet_cidr_bloks" {
    type = list(string)
    description = "creates privatesubnet"
    default =  []
  
}
variable "aws_internet_gateway" {
    type = string
    description = "creates internet gateway"
  
}
variable "aws_route_table" {
  
  type = string
  description = "creates public route table"
}
variable "aws_route_table_private" {
    type = string
    description = "creates private route table"
  
}
variable "aws_nat_gateway" {
    type = string
    description = "nat gateway"
  
}
variable "cidr_block" {
    type = string
    description = "it is for route"
  
}
