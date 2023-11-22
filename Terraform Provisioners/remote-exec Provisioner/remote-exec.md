## remote-exec Provisioner
The `remote-exec` provisioner invokes a script on a remote resource after it is created. This can be used to run a configuration management tool, bootstrap into a cluster, etc.The `remote-exec` provisioner requires a connection and supports both `ssh` and `winrm`.

## Argument Reference
The following arguments are supported:

- **inline** - This is a list of command strings. The provisioner uses a default shell unless you specify a shell as the first command (eg., #!/bin/bash). You cannot provide this with script or scripts.

- **script** - This is a path (relative or absolute) to a local script that will be copied to the remote resource and then executed. This cannot be provided with inline or scripts.

- **scripts** - This is a list of paths (relative or absolute) to local scripts that will be copied to the remote resource and then executed. They are executed in the order they are provided. This cannot be provided with inline or script.