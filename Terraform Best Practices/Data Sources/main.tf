provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "amazon-linux" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "name" {
  ami = data.aws_ami.amazon-linux.id
  instance_type = "t2.micro"
}