## Creation-time & destroy-time Provisioners

Provisioners will execute during Creation-time by default. This means that they will run when a resource is created. However, you can also specify that a provisioner should run during Destroy-time. This means that the provisioner will run when a resource is destroyed.

To specify that a provisioner should run during Destroy-time, you can use the `when` meta-parameter with the value `destroy`. For example:

```hcl
resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo ${aws_instance.web.private_ip} >> private_ips.txt"
    when    = "destroy"
  }
}
```