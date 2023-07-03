## data source for S3 bucket
data "aws_s3_bucket" "my_s3_bucket" {
    bucket = "terraformbucketaws"
  
}

## data source for AWS Account ID
data "aws_caller_identity" "current" {}

## data source for s3-kms-policy
data "aws_iam_policy_document" "s3-kms-key-policy-for-encryption" {
  statement {
    sid = "Enable IAM User Permissions"

    actions = [
      "kms:*",
    ]

    resources = [
      "*",
    ]

    principals {
        type = "AWS"
        identifiers = ["arn:aws:iam::371191637464:user/tugba1"]
    }
  }
}
