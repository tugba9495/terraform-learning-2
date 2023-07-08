variable "ami" {
    type = string
    description = "defines ami for ec2 instance"
  
}
variable "instance_type" {
    type = string
    description = "define instance type for ec2 instance"
  
}
variable "key_name" {
    type = string
    description = "keyname for ec2 instance"
  
}
variable "cidr_block" {
    type = string
    description = "cidr block for security group"
    default = "0.0.0.0/0"
  
}
