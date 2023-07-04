variable "aws_vpc" {
  type = string
  description = "define default cidr block for vpc"

}
variable "aws_vpc_name" {
    type = string
    description = "name for vpc"
  
}
variable "aws_publicsubnet1" {
    type = string
    description = "public subnet 1"
  
}
variable "aws_publicsubnet2" {
    type = string
    description = "public subnet 2"
  
}
variable "aws_privatesubnet1" {
    type = string
    description = "private subnet 1"
  
}
variable "aws_privatesubnet2" {
    type = string
    description = "private subnet 2"
  
}