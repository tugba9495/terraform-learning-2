terraform {
  backend "s3" {
    bucket = "terraformbucketaws"
    key = "dev/terraform.tfstate"
    region = "us-west-1"
    
  }
}