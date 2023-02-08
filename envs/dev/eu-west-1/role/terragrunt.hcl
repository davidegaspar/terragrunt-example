include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules//role"
}

dependency "secret" {
  config_path = "../secret"

  mock_outputs = {
    this_secretsmanager_secret_arn = "some_secretsmanager_secret_arn"
  }
}

dependency "storage" {
  config_path = "../storage"
  mock_outputs = {
    this_s3_bucket_arn = "some_s3_bucket_arn"
  }
}

inputs = {
  secretsmanager_secret_arn = dependency.secret.outputs.this_secretsmanager_secret_arn
  s3_bucket_arn             = dependency.storage.outputs.this_s3_bucket_arn
}
