provider "aws" {
  region = "us-east-1"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 1
  type              = "gp2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"


  lifecycle {
    # Replace the instance if the EBS volume is replaced.
    replace_triggered_by = [ aws_ebs_volume.example ]
  }
}