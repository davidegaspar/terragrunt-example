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

## next

- share inputs
- provider role arn (generate?)
- setup the backend (generate?)
- improved cli flags?
- hooks?
- lockfile useful?

## reference

- https://terragrunt.gruntwork.io/docs/#features
