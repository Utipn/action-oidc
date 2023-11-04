terraform {
  backend "s3" {
    bucket  = "utip-backend-bucket"
    region  = "us-west-2"
    key     = "oidc/terraform.tfstate"
    encrypt = true
  }
}