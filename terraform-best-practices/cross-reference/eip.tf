resource "aws_eip" "lb" {
  instance = aws_instance.instance-1.id
  domain   = "vpc"
}