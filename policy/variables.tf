variable "instance_type" {
    type = string
    description = "instance type for ec2"
    default = "t2.micro"
  
}

variable "tags" {
    description = "create tags for ec2 instance"
    type = string
    default = "{\"Name\": \"ec2instance\"}"
  
}
variable "vpc_id" {
    description = "vpc id for ec2"
 
    default = 	"vpc-0e07184f7d721ff67"
  
}
