include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules//role"
}

dependencies {
  paths = ["../secret", "../storage"]
}

inputs = {}
