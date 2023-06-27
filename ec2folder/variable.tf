variable "ami" {
  description = "ami for ec2 instance"
  type        = string
  default     = "ami-0bd4d695347c0ef88"

}
variable "instance_type" {
  description = "instance type for ec2 instance"
  type        = string
  default     = "t2.micro"

}
variable "key_name" {
  description = "define keyname "
  type        = string
  default     = "tugba@mac-key"

}
variable "security_groups" {
  description = "default security group"
  type        = list(string)
  default     = ["sg-0689b2f0227d7f8d5"]

}
variable "user_data" {
  description = "create user data"
  type        = string
  default     = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y terraform  
  EOF
}
