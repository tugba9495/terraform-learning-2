variable "env" {
  
  type = string
  default = "dev"
}
variable "ami" {
    type = string
    default = "ami-0fd61683ae1a27a64"
  
}
variable "instance_type" {
  
  type = string
  default = "t2.micro"
}