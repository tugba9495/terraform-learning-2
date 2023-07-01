variable "image_id" {
  type        = string
  description = "create aim for ec2"
  default     = "ami-04ceee5659211731a"
}
variable "instance_type" {
  type        = string
  description = "instance type for ec2"
  default     = "t2.micro"
}
variable "inbound_rules" {
    type = list(string)
    description = "ports for inbound rule"
    default = [ "80","22"]

  
}
variable "inbound_rules_cidr_block" {
    description = "cidr for inbound rules"
    type = list(string)
    default = [ "0.0.0.0/0","10.1.0.0/16" ]
  
}