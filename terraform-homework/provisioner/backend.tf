terraform {
  backend "s3" {
    bucket = "terraform-aws-tugba"
    key            = "provisioners/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-dynamoDB-lock"

  }

}