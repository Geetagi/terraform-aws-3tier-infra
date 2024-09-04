terraform {
  backend "s3" {
    bucket  = "terraform.s3.geeta"
    key     = "terraform/state"
    region  = "us-east-1"
    encrypt = true
  }
}