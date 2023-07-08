resource "aws_kms_key" "my_kms_key" {
  description                    = var.description
  deletion_window_in_days        = var.deletion_window_in_days
  enable_key_rotation            = var.enable_key_rotation
  is_enabled                     = var.enabled
  policy                         = data.aws_iam_policy_document.s3-kms-key-policy-for-encryption.json
  tags = merge(
    local.common_tags
   
     )

  
}