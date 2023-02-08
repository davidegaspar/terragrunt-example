# terragrunt-example

Terragrunt example

## envs

### per module

```sh
cd envs/dev/eu-west-1/storage
terragrunt run-all plan
```

### per env

```sh
cd envs/dev # dev|stage|prod
terragrunt run-all plan
```

## development

```sh
# debug
export TERRAGRUNT_LOG_LEVEL=debug
# cleanup
rm -rf **/.terragrunt-cache
# fmt
terragrunt hclfmt
```

## next

- improved cli flags?
- hooks?
- lockfile useful?

## reference

- https://terragrunt.gruntwork.io/docs/#features
- https://github.com/gruntwork-io/terragrunt-infrastructure-live-example
- https://github.com/gruntwork-io/terragrunt-infrastructure-modules-example
