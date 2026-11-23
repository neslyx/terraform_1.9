terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"

  access_key = "test"
  secret_key = "test"

  endpoints {
    ec2      = "http://localhost:4566"
    s3       = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
  }

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true

  s3_use_path_style = true

  default_tags {
    tags = {
      Env       = "prod"
      ManagedBy = "Terraform"
    }
  }
}