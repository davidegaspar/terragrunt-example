include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules//role"
}

// dependency "secret" {
//   config_path = "../secret"
    
//   mock_outputs = {
//     // vpc_id = "temporary-dummy-id"
//   }
// }

// dependency "storage" {
//   config_path = "../storage"
//   mock_outputs = {
//     // vpc_id = "temporary-dummy-id"
//   }
// }

dependencies {
  paths = ["../secret", "../storage"]
}

inputs = {}
