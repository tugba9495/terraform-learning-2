variable "s3_bucket" {
    type = string
    description = "create unique  name for s3 bucket"

  

}
variable "aws_s3_bucket_versioning" {
    type = string
    description = "se bucket versioing"
    default = "Enabled"

    }

  