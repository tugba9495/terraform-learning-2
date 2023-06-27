resource "aws_s3_bucket" "terraform_s3_bucket" {
  bucket = var.bucket_name
  tags   = local.tags
}

resource "aws_s3_bucket_versioning" "terraform_s3_versioning" {
  bucket = aws_s3_bucket.terraform_s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.terraform_s3_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.terraform_s3_bucket.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [""]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.terraform_s3_bucket.arn,
      "${aws_s3_bucket.terraform_s3_bucket.arn}/*",
    ]
  }
}
