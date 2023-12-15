## Modules in Terraform

### What is a module?
A module is a container for multiple resources that are used together. Modules can be used to create lightweight abstractions, so that you can describe your infrastructure in terms of its architecture, rather than directly in terms of physical objects.

### Why use modules?
Modules make it easier to:
- **Compose:** Modules can be used multiple times, even within the same configuration, without the risk of collisions.
- **Encapsulate:** Modules can be used to create lightweight abstractions, so that you can describe your infrastructure in terms of its architecture, rather than directly in terms of physical objects.
- **Refactor:** Modules make it easier to refactor your configuration as your infrastructure evolves.
- **Share:** Modules make it easier to share your infrastructure with your team, and reuse your infrastructure in different contexts.

### How to use modules?
Modules are called from within other modules using module blocks. The source argument in a module block tells Terraform where to find the source code for the desired child module.

```hcl
module "consul" { 
  source = "hashicorp/consul/aws"
  version = "0.0.5"

  servers = 5
}
```

### Module Sources
Terraform modules can be sourced from:
- **Local paths:** A local filesystem path, which should be used as-is and not be downloaded from the registry.
- **Terraform Registry:** A registry hostname with a namespace and name, like `hashicorp/consul/aws`.
- **GitHub:** A GitHub repository specified by the owner, repository, and (optionally) ref. The ref can be a branch, tag, or commit SHA.
- **Bitbucket:** A Bitbucket Cloud repository specified by the owner, repository, and (optionally) ref. The ref can be a branch, tag, or commit SHA.
- **Generic Git:** A generic Git repository specified by a URL.
- **HTTP URLs:** A generic HTTP URL, which will be downloaded and cloned locally before use.
- **Local Filesystem:** A local filesystem path, which should be used as-is and not be downloaded from the registry.

### Module Sources: Terraform Registry
The Terraform Registry is a public index of modules shared by the community, and a service that makes it easy to publish modules to that index. The registry is open-source, and the index is browsable at registry.terraform.io.

### Module Sources: GitHub
Terraform can install modules directly from a variety of sources, and providers can make modules available for installation from custom sources. The most common source is a version control system (VCS) repository, hosted by a service like GitHub, GitLab, or Bitbucket.

### Module Sources: Bitbucket
Terraform can install modules directly from a variety of sources, and providers can make modules available for installation from custom sources. The most common source is a version control system (VCS) repository, hosted by a service like GitHub, GitLab, or Bitbucket.

### Module Sources: Generic Git
Terraform can install modules directly from a variety of sources, and providers can make modules available for installation from custom sources. The most common source is a version control system (VCS) repository, hosted by a service like GitHub, GitLab, or Bitbucket.

### Module Sources: HTTP URLs
Terraform can install modules directly from a variety of sources, and providers can make modules available for installation from custom sources. The most common source is a version control system (VCS) repository, hosted by a service like GitHub, GitLab, or Bitbucket.

### Module Sources: Local Filesystem
Terraform can install modules directly from a variety of sources, and providers can make modules available for installation from custom sources. The most common source is a version control system (VCS) repository, hosted by a service like GitHub, GitLab, or Bitbucket.

Reference: [Terraform Modules](https://www.terraform.io/docs/modules/index.html)
