terraform {
  backend "s3" {
    bucket = "terraform-backend-2020"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}