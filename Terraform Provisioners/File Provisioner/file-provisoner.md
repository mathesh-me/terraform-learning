## File Provisioner

- The File provisioner is used to copy files or directories from the machine executing Terraform to the newly created resource. This allows you to bootstrap the resource with existing configuration or data that exists on the local machine.

- The File provisioner supports both `ssh` and `winrm` type connections.

The following arguments are supported:

- **source** - The source file or directory. Specify it either relative to the current working directory or as an absolute path. This argument cannot be combined with `content`.

- **content** - The direct content to copy on the destination. If destination is a file, the content will be written on that file. In case of a directory, a file named `tf-file-content` is created inside that directory. We recommend using a file as the destination when using content. This argument cannot be combined with `source`.

- **destination** - (Required) The destination path to write to on the remote system.