resource "aws_instance" "instance-1" {
  ami           = "ami-123456789"
  instance_type = "t2.micro"
}