## Best Practice: Dealing with Large Infrastructure

### Split your infrastructure into multiple Terraform configurations (Multiple folders)

When you have a large infrastructure, it is a good idea to split your Terraform configuration into multiple configurations. This will help you to manage your infrastructure in a better way.

### Best Commands Suggestions

- Setting `resfresh=false` in terraform block
```bash
$ terraform plan -refresh=false
```
- Setting with target resources
```bash
$ terraform plan -target=resource_type.resource_name
```
- Setting resfresh along with target resources
```bash
$ terraform plan -refresh=false -target=resource_type.resource_name
```