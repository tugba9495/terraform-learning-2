variable "ami" {
  description = "ami for ec2 instance "
  type        = string
  default     = "ami-0953e68f68effeb5d"

}
variable "instance_type" {
  description = "instance typr for ec2 instance"
  type        = string
  default     = "t2.micro"

}
variable "key_name" {
  description = "keyname for user"
  type        = string
  default     = "tugba@mac-key"

}
variable "tags" {
  description = "create tags for ec2 instance"
  type        = string
  default     = "{\"Name\": \"ec2instance\"}"
}




