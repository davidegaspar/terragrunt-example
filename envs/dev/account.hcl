locals {
  account_id      = "${get_aws_account_id()}"
  env             = "dev"
  assume_role_arn = "arn:aws:iam::${get_aws_account_id()}:role/infra"
  state_bucket    = "${get_aws_account_id()}-terraform-state"
  state_region    = "eu-west-1"
}
