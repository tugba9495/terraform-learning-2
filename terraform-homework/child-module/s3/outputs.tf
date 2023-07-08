output "s3-bucket-name" {
    value = aws_s3_bucket.s3_bucket.id
    description = "s3 bucket name for s3"
  
}
# output "aws_s3_bucket_server_side_encryption_configuration" {
#     value = aws_s3_bucket_server_side_encryption_configuration.encryption_kms_s3.id
#     description = "encryption in s3"
# }
