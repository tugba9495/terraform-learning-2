terraform {
    backend "s3" {
        bucket = "terraformbucketaws"

        key = "s3/terraform.tfstate"
        region = "us-west-1"
      
    }
  
}