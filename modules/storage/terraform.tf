terraform {
  required_version = ">=1"
  # backend "s3" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      owner   = "davidegaspar"
      project = "terraform-example"
      env     = var.env
    }
  }
}
