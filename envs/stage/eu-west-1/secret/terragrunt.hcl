include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules//secret"
}

inputs = {
  prefix     = "secret"
}
