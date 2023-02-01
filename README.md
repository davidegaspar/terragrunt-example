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
