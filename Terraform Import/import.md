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

#### State Only

The `terraform import` CLI command can only import resources into the state. Importing via the CLI does not generate configuration. If you want to generate the accompanying configuration for imported resources, use the import block instead.

### Import Blocks

- **Note**: Import blocks are only available in Terraform v1.5.0 and later.

- Use the `import` block to import existing infrastructure resources into Terraform, bringing them under Terraform's management. Unlike the terraform import command, configuration-driven import using `import` blocks is predictable, works with CICD pipelines, and lets you preview an import operation before modifying state.

Once imported, Terraform tracks the resource in your state file. You can then manage the imported resource like any other, updating its attributes and destroying it as part of a standard resource lifecycle.

The `import` block records that Terraform imported the resource and did not create it. After importing, you can optionally remove import blocks from your configuration or leave them as a record of the resource's origin.

#### Import Block Syntax

The `import` block is a top-level block that can be used in any Terraform configuration. It has the following syntax:

```bash
import {
  to = <resource>
  id = <resource_id>
}
```



