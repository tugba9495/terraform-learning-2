variable "instance_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}
variable "ami" {
  type        = string
  description = "create ami"
  default     = "ami-04ceee5659211731a"



}
variable "key_name" {
  type        = string
  description = "keyname for ec2"
  default     = "tugba@mac-key"

}