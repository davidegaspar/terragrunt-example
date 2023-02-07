locals {
  account = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

inputs = merge(
  local.account.inputs,
  local.region.inputs,
  {
    prefix = "ex"
  }
)
