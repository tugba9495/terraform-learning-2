module "s3_bucket" {
  source = "../../child-module/s3"
  s3_bucket = "new-s3-bucket-tugba"
}