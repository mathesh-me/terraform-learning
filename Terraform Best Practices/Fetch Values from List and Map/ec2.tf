resource "aws_instance" "instance-1" {
  ami           = var.ami-id["ubuntu"]
  instance_type = var.instance-type[1]
}