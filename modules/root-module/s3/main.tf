module "s3_bucket" {
  source = "../../child-module/s3"
  s3_bucket = "atakan-terraform-bucket"
}
