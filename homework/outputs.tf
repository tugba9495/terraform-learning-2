output "aws_s3_bucket_name" {
  description = "s3 bucket name"
  value       = aws_s3_bucket.my_s3_bucket_terraform.id

}
output "random-pet-name" {
  value       = random_pet.s3_name.id
  description = "random name"
}