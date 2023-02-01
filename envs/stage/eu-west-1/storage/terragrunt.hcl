terraform {
  source = "../../../../modules//storage"
}

inputs = {
  account_id = "963345548549"
  region     = "eu-west-1"
  prefix     = "example"
  env        = "stage"
}
