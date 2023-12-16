provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map(string)

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prd     = "t2.large"
  }
}