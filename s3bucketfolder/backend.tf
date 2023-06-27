terraform {
    backend "s3" {
        bucket = "terraform-aws-bucket-tugba"
        key = "s3bucketfolder/terraform.tfstate"
        region = "us-west-1"
      
    }
  
}