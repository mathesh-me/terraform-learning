resource "aws_instance" "instance-1" {
  ami = "ami-123456789"
  instance_type = var.instance-type["0"]

  tags = {
    Name = var.instance-name
  }

}