resource "aws_kms_key" "kms_key_terraform" {
    description             = var.description
    deletion_window_in_days = var.deletion_window_in_days
    is_enabled              = var.is_enabled
    policy                  = data.aws_iam_policy_document.s3-kms-key-policy-for-encryption.json
    enable_key_rotation     = var.enable_key_rotation
    
    tags = merge(
      local.common_tags,
      {
          Name = "mykmskey"
      }
    )
}


  