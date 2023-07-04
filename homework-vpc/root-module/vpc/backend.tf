terraform {
    backend "s3" {
        bucket = "terraformbucketaws"

        key = "vpc-folder/terraform.tfstate"
        region = "us-west-1"
      
    }
  
}