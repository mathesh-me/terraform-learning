resource "aws_instance" "dev-environment" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
   count = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod-environment" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.large"

   count = var.istest == false ? 1 : 0
}