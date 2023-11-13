# Comments in Terraform
// This is a single line comment

/*
This is a multi-line comment
*/

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance-1" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

/*
resource "aws_instance" "instance-2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
*/



