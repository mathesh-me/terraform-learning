## Failure behaviour of provisioners

Provisioners can fail for a number of reasons, including network issues, timeouts, or permission errors. When a provisioner fails, Terraform will mark the resource as "tainted" and destroy it. This is because Terraform doesn't support partial creation of resources. If a resource is partially created, it could put your system into an inconsistent state.

If you want to ignore errors and continue, you can add the `ignore_errors` flag to your provisioner. This will cause Terraform to log the error and continue without marking the resource as tainted.

```hcl
resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo ${aws_instance.web.private_ip} >> private_ips.txt"
    on_failure = "continue"
  }
}
```
