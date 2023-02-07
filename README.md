# terragrunt-example

Terragrunt example

## envs

### per module

```sh
cd envs/stage/eu-west-1/storage
terragrunt run-all plan
```

### per env

```sh
cd envs/stage
terragrunt run-all plan
```

## old

```sh
cd modules/storage
terraform init
terraform plan -var-file=../../old/stage/eu-west-1/storage/terraform.tfvars
```

## next

- module dependencies / run all
- setup the backend
- provider role arn (generate?)
- improved cli flags
- hooks
- lockfile?

## reference

- https://terragrunt.gruntwork.io/docs/#features
