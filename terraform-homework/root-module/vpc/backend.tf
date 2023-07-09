terraform {
  backend "s3" {
    bucket = "terraform-aws-learning"
    key            = "s3bucketfolder/vpc/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-dynamoDB-lock"

  }

}