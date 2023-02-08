locals {
  project_locals = read_terragrunt_config(find_in_parent_folders("project.hcl")).locals
  account_locals = read_terragrunt_config(find_in_parent_folders("account.hcl")).locals
  region_locals  = read_terragrunt_config(find_in_parent_folders("region.hcl")).locals
}

generate "terraform" {
  path      = "terraform.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  required_version = "${local.project_locals.terraform_version}"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "${local.project_locals.aws_provider_version}"
    }
  }
  backend "s3" {
    bucket         = "${local.account_locals.state_bucket}"
    region         = "${local.account_locals.state_region}"
    encrypt        = true
    key            = "${local.project_locals.project_name}/${path_relative_to_include()}/terraform.tfstate"
  }
}
  EOF
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  allowed_account_ids = ["${local.account_locals.account_id}"]
  region = "${local.region_locals.region}"
  default_tags {
    tags = {
      owner   = "${local.project_locals.owner}"
      project = "${local.project_locals.project_name}"
      env     = "${local.account_locals.env}"
    }
  }
  assume_role {
    role_arn = "${local.account_locals.assume_role_arn}"
  }
}
  EOF
}

inputs = merge(
  local.project_locals,
  local.account_locals,
  local.region_locals,
)
