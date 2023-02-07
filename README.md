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
cd envs/stage # dev|stage|prod
terragrunt run-all plan
```

## old

```sh
cd modules/storage
terraform init
terraform plan -var-file=../../old/stage/eu-west-1/storage/terraform.tfvars
```

## next

- share inputs
- provider role arn (generate?)
- setup the backend
- improved cli flags?
- hooks?
- lockfile useful?

## reference

- https://terragrunt.gruntwork.io/docs/#features
