variable "ami" {
    type = string
    description = "ami for instance"
    default = "ami-04ceee5659211731a"

  
}
variable "instance_type" {
    type = string
    description = "instance type for instance"
    default = "t2.micro"

  
}
variable "env" {
    type = string
    description = "tags for environment"
    default = "dev"

  
}
variable "security_group_port" {
    type = list(string)
    description = "ports for security group"
    default = [ "443","80" ]
  
}
variable "security_group_cidr" {
    type = list(string)
    description = "cidr blocks for security group"
    default = [ "0.0.0.0/0", "0.0.0.0/0" ]
  
}