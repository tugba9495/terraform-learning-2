terraform {
  backend "s3" {
    bucket = "terraform-aws-tugba"

    key    = "s3bucketfolder/terraform.tfstate"
    region = "us-west-1"

  }

}