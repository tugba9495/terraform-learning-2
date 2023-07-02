terraform {
    backend "s3" {
        bucket = "terraformbucketaws"
        key = "session-5/prod/terraform.state"
        region = "us-west-1"
      
    }
  
}