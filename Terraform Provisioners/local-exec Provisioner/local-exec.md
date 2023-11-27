## local-exec Provisoner

The `local-exec` provisioner invokes a local executable after a resource is created. This invokes a process on the machine running Terraform, not on the resource.

The `local-exec` provisioner supports the following arguments:

* `command` - (Required) The command to execute. This can be either a single command or a list of commands. If the command is a list, the elements of the list must be strings that will be joined together to form a command. If you wish to run multiple commands, use a shell. In particular, if you use the `bash` shell, you can use the `-c` option to run a command passed in as a string. For example: `["bash", "-c", "echo hello", "echo world"]`.

* `interpreter` - (Optional) The path to the interpreter to execute the `command`. This defaults to the system shell (e.g. `/bin/sh` on Linux and `cmd` on Windows). If you wish to use a shell other than the system shell, you must specify the full path to the shell executable.

* `working_dir` - (Optional) The path to the working directory that will be used when executing `command`. If not specified, the working directory will default to the directory of the file. This must be an absolute path.

* `environment` - (Optional) A map of environment variables to set before executing `command`. These environment variables are not available to subsequent provisioners or other parts of the Terraform configuration.

* `when` - (Optional) If provided, specifies when Terraform will execute the command. For example, `when = destroy` specifies that the provisioner will run when the associated resource is destroyed. Refer to Destroy-Time Provisioners for details.

* `quiet` - (Optional) If set to `true`, Terraform will not print the command to be executed to stdout, and will instead print "Suppressed by quiet=true". Note that the output of the command will still be printed in any case.

### Example Usage

```hcl
resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo ${aws_instance.web.private_ip} >> private_ips.txt"
  }
}
```