
# Terraform code with git  submodule code for community provider

This is simple TF code that consume git submodule for community provider plugin. The main goal is in one git repository's folders to link another git repository. In our case we link a community plug in shell (https://github.com/scottwinkler/terraform-provider-shell) so we can reuse it in multiple repositories but upload it one and thus save space.

## Getting Started

These instructions will get you a example of how to use git submodule combine with TF code.

### Prerequisites

Software needed to be installed:

- git -> https://git-scm.com/downloads
- terraform -> https://www.terraform.io/downloads.html

### Installing

First step is to clone this repository. Open you terminal according to your OS, change to your working directory and perform the following command:

Say what the step will be

```
git clone --recurse-submodules https://github.com/yaroslav-007/17447.git
```

When repository is cloned change your directory to the repo folder

```
cd 17447
```

## Running the tests

To test if the code and clone of the github repo successful, we should run **terraform init**. This should initiate terraform and find all plug ins included the shell plugin deployed as git submodule

### Performing the test

Run **terraform init*

```
terraform init
```

### Test result

If everything is ok the output of the initiation should be:

```
Terraform has been successfully initialized!

```
We can check if the shell plugin is loaded:
```
 terraform providers 
.
├── provider.null
└── provider.shell

```
