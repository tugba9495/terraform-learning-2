data "aws_iam_policy_document" "kms_key_policy" {
  statement {
    sid       = "Enable IAM User Permissions"
    effect    = "Allow"
    principals {
      identifiers = ["arn:aws:iam::371191637464:user/tugba1"]
      type        = "AWS"
    }
    actions   = ["kms:*"]
    resources = ["*"]
  }
}