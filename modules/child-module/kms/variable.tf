variable "description" {
description = "dlete kms key in 7 days"
type = string
}
variable "deletion_window_in_days" {
    description = "description for kms key"
    type = number
  
}
variable "enabled" {
    description = "enabled to is by default is true or change between booleans true/false"
    type = bool
  
}
variable "enable_key_rotation" {
    type = bool
    description = "enable key rotation true/false"
  
}