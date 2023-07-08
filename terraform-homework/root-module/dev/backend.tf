terraform {
  backend "s3" {
    bucket = "terraform-aws-learning"
    key = "terraform-learning/terraform.tfstate"
    dynamodb_table = "terraform-dynamoDB-lock"
    
  }
}