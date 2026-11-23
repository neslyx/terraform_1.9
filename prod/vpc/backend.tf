terraform {
  backend "s3" {
    bucket = "trainee-project-kirill-gromyko-tfstate"
    key    = "prod/vpc.tfstate"
    region = "eu-north-1"

    dynamodb_table = "dlock"

    endpoints = {
      s3       = "http://localhost:4566"
      dynamodb = "http://localhost:4566"
    }

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true

    use_path_style = true
  }
}