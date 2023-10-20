provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "name-1" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
}

resource "aws_instance" "name-2" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
}
