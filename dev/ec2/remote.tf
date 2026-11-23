data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "trainee-project-kirill-gromyko-tfstate"
    key    = "dev/vpc.tfstate"
    region = "eu-north-1"

    endpoints = {
      s3 = "http://localhost:4566"
    }

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true

    use_path_style = true
  }
}