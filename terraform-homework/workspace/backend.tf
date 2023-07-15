terraform {
    backend "s3" {
        bucket = "terraform-aws-learning"

        key = "workspace/terraform.tfstate"
        region = "us-west-1"
        dynamodb_table = "terraform-dynamoDB-lock"
        workspace_key_prefix = "workspace"
      
    }
  
}