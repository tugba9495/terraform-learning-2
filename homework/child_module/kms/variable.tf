variable "deletion_window_in_days" {
    description = "delete kms in 5 days"
    type = number
  
}
variable "is_enabled" {
    description = "enabled to is by default is true or change between booleans true/false"
    type = bool
}
variable "enable_key_rotation" {
    type = bool
    description = "enable key rotatition is true/false"
  
}
variable "description" {
    description = "description of kms key"
    type = string
  
}
