resource "aws_instance" "instance-1" {
  ami           = var.ami
  instance_type = var.instance-type[count.index]
  count = 5
}