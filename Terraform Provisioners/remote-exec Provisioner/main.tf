provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "my-key"
  security_groups = ["${aws_security_group.allow_ssh.name}"]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("my-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install nginx1.12",
      "sudo systemctl start nginx"
    ]
  }
}