terraform {
  backend "s3" {
    bucket = "terraform-backend-tugba"
    key    = "backend/terraform.tfstate"
    region = "us-west-1"


  }
}

