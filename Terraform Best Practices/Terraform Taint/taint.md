## Terraform Taint Command

The `terraform taint` command informs Terraform that a particular object has become degraded or damaged. Terraform represents this by marking the object as "tainted" in the Terraform state, and Terraform will propose to replace it in the next plan you create.

## Recommended Alternative

For Terraform v0.15.2 and later, we recommend using the -replace option with `terraform apply` to force Terraform to replace an object even though there are no configuration changes that would require it.

```bash
$ terraform apply -replace="aws_instance.example[0]"
```

We recommend the `-replace` option because the change will be reflected in the Terraform plan, letting you understand how it will affect your infrastructure before you take any externally-visible action. When you use `terraform taint` , other users could create a new plan against your tainted object before you can review the effects.

## Example Usage

```bash
$ terraform taint aws_instance.example
Resource instance aws_instance.example has been marked as tainted.
```