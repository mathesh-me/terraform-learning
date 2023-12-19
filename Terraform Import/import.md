## Import existing infrastructure into Terraform

Terraform can import existing infrastructure resources. This functionality lets you bring existing resources under Terraform management.

### Importing a resource

The `terraform import` command is used to import existing resources into Terraform. The command takes two arguments: the resource type and the resource ID. The resource type and ID are provider-specific, and the resource type must be supported by the given provider.

The command looks like this:

```bash
terraform import <resource_type>.<resource_name> <resource_id>
```

For example, to import an AWS EC2 instance with the ID `i-12345678` into a Terraform resource named `aws_instance.example`, you would run:

```bash
terraform import aws_instance.example i-12345678
```

