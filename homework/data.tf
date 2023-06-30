data "aws_caller_identity" "current" {}


data "aws_iam_policy_document" "aws_iam_policy_s3" {

  statement {

    sid = "RemoteStatePolicy"
    actions = [
      "s3:GetObject",
      "s3:PutObject",
    ]
    resources = [
      "${aws_s3_bucket.my_s3_bucket_terraform.arn}/*",
    ]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/tugba1"]
    }

  }
  statement {
    actions = [
      "s3:ListBucket",
    ]
    resources = [
      aws_s3_bucket.my_s3_bucket_terraform.arn,

    ]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/tugba1"]
    }


  }
}