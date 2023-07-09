data "terraform_remote_state" "vpc" {
 backend = "s3"
 config = {
  bucket = "terraform-aws-learning"
  key    = "s3bucketfolder/vpc/terraform.tfstate"
  region = "us-west-1"
 }
}