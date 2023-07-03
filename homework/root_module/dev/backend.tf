terraform {
  backend "s3" {
    bucket = "terraformbucketaws"
    key    = "rootmodule/dev/terraform.state"
    region = "us-west-1"

  }

}