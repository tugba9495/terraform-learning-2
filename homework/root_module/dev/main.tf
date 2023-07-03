module "s3_kms_key" {
  source                  = "../../child_module/kms/"
  description             = "kms key for s3 bucket"
  deletion_window_in_days = 7
  enable_key_rotation     = true
  is_enabled              = true



}
module "aws_iam_policy" {
  source                  = "../../child_module/kms/"
  description             = "creates iam policy"
  deletion_window_in_days = 7
  enable_key_rotation     = true
  is_enabled              = true



}