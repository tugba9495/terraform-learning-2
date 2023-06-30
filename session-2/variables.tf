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