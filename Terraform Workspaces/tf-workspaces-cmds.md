## Workspaces Commands

### Create a workspace

```bash
terraform workspace new dev
```

### List workspaces

```bash
terraform workspace list
```

### Select workspace

```bash
terraform workspace select dev
```

### Delete workspace

```bash
terraform workspace delete dev
```

### Show current workspace

```bash
terraform workspace show
```

### Copy workspace

```bash
terraform workspace new stage
terraform workspace select dev
terraform workspace show
terraform workspace select stage
terraform workspace show
```

