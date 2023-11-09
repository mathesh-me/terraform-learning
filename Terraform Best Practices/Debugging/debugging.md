## Debugging Terraform

Terraform has detailed logs that you can enable by setting the TF_LOG environment variable to any value. Enabling this setting causes detailed logs to appear on stderr.

You can set `TF_LOG` to one of the log levels (in order of decreasing verbosity) `TRACE`, `DEBUG`, `INFO`, `WARN` or `ERROR` to change the verbosity of the logs.
Like this:

```bash
export TF_LOG=TRACE
```
You can also set `TF_LOG` to any other value to set the log level to `TRACE`. But `TRACE` is the most verbose log level and it is not recommended to use it in production.

To persist logged output you can set `TF_LOG_PATH` in order to force the log to always be appended to a specific file when logging is enabled. Note that even when `TF_LOG_PATH` is set, `TF_LOG` must be set in order for any logging to be enabled.
Like this:

```bash
export TF_LOG_PATH=/tmp/crash.log
```