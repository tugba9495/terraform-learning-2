resource "aws_s3_bucket" "my_s3_bucket_terraform" {
  bucket = var.bucket_name
  tags = {
    Name        = var.bucket_name
    Environment = "prod"
  }

}
resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket_terraform.id
  versioning_configuration {
    status = "Enabled"
  }

}
resource "aws_s3_bucket_server_side_encryption_configuration" "s3encryption" {
  bucket = aws_s3_bucket.my_s3_bucket_terraform.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

}
resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket = aws_s3_bucket.my_s3_bucket_terraform.id
  policy = data.aws_iam_policy_document.aws_iam_policy_s3.json

}