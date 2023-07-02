terraform {
    backend "s3" {
        bucket = "terraformbucketaws"
        key = "session-5/dev/terraform.state"
        region = "us-west-1"
      
    }
  
}