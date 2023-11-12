terraform {
  required_version = "< 0.12.0"
  required_providers {
    aws = "~> 2.0"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}