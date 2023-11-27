provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

 connection {
    type        = "ssh"
    user        = "ubuntu"  
    private_key = file("/c/Users/Mathesh M/.ssh/id_rsa")  
    host        = self.public_ip
   }

   provisioner "file" {
    source      = "../Flask Application/app.py"  
    destination = "/home/ubuntu/app.py"  
   }
}