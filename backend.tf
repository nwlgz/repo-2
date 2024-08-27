terraform {
  backend "s3" {
    bucket         = "lz-state-114437252108"
    key            = "home_region/pipeline/state"
    region         = "eu-west-1"
    acl            = "bucket-owner-full-control"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}