resource "aws_kms_key" "my_kms_key" {
  description             = "creates kms key"
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  is_enabled              = var.is_enabled
  policy = data.aws_iam_policy_document.kms_key_policy.json
 

  tags = local.tags
}


