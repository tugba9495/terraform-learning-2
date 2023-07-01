terraform {
    backend "s3" {
        bucket = "terraformbucketaws"
        key = "homework_vpc/terraform.state"
        region = "us-west-1"
      
    }
  
}