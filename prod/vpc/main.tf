module "vpc" {
  source = "../../modules/vpc"

  name_prefix = "prod-trainee-project"

  vpc_cidr = "10.0.0.0/16"

  azs = [
    "eu-north-1a",
    "eu-north-1b"
  ]
}