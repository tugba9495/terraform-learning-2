variable "cidr_block_forvpc" {
  type        = string
  description = "create cidr block for vpc"
  default     = "10.0.0.0/16"
}

variable "cidr_block_forpublicsubnet1" {
  type        = string
  description = "create cidr block for publicsubnet1"
  default     = "10.0.1.0/24"
}

variable "cidr_block_forpublicsubnet2" {
  type        = string
  description = "create cidr block for publicsubnet2"
  default     = "10.0.2.0/24"
}

variable "cidr_block_forpublicsubnet3" {
  type        = string
  description = "create cidr block for publicsubnet3"
  default     = "10.0.3.0/24"
}

variable "cidr_block_forprivatesubnet1" {
  type        = string
  description = "create cidr block for privatesubnet1"
  default     = "10.0.11.0/24"
}
variable "cidr_block_forprivatesubnet2" {
    type = string
    description = "creates cidr block for privatesubnet2"
    default = "10.0.12.0/24"
  
}
variable "cidr_block_forprivatesubnet3" {
    type = string
    description = "creates cidr block for privatesubnet3"
    default = "10.0.13.0/24"
  
}