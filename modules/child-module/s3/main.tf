module "s3_kms_key" {
    source = "../../child-module/kms"
    description = "kms key for s3 bucket"
    deletion_window_in_days = 7
    enabled = true
    enable_key_rotation = true
}

  

resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.s3_bucket
    tags = merge(
        local.common_tags
    )
      
    
  
}
resource "aws_s3_bucket_versioning" "s3_versioning" {
    bucket = aws_s3_bucket.s3_bucket.id
    versioning_configuration {
      status = var.aws_s3_bucket_versioning
    }
  
}
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption_kms_s3" {
    bucket = aws_s3_bucket.s3_bucket.id
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = module.s3_kms_key.aws_key_id # get the name of module that you created (s3_kms_key)and get the data in output in kms foler(aws_key_id) 
        sse_algorithm = "aws:kms"
           
            
        }
            
            
        }
            
            
        }
      
  
