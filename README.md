# terragrunt-example

Terragrunt example

## envs

```sh
cd envs/stage/eu-west-1/storage
terragrunt plan
```

## old

```sh
cd modules/storage
terraform init
terraform plan -var-file=../../old/stage/eu-west-1/storage/terraform.tfvars
```

## next

- setup the backend
- provider role arn (generate?)
- include "env" ??? to spread the config
- module dependencies / run all
- improved cli flags
- hooks
- lockfile?

## reference

- https://terragrunt.gruntwork.io/docs/#features
