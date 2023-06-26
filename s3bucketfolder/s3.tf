resource "aws_s3_bucket" "terraform-s3-bucket" {
  bucket = "terraform-s3-bucket-tugba"
  tags = {
    Name = "my terraform bucket"
  }


}
resource "aws_s3_bucket_policy" "aws_terraform_bucket_policy" {

bucket = aws_s3_bucket.terraform-s3-bucket.id
policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": "*",
        "Action": ["s3:GetObject"],
        "Resource": [
          "arn:aws:s3:::terraform-s3-bucket-tugba/*"
        ]
      }
    ]
  })
}