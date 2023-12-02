module "sg-module" {
  source = "../Project-A"
}

resource "aws_instance" "name" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  security_groups = module.sg-module.sg-id
  tags = {
    Name = "terraform-example"
  }
}

output "instance-id" {
  value = aws_instance.name.id
}