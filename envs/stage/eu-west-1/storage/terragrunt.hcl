// include "root" {
//   path = find_in_parent_folders()
// }

terraform {
  source = "../../../../modules//storage"
}

inputs = {
  prefix = "ex"
  account_id = "963345548549"
  env = "stage"
  region = "eu-west-1"
}
