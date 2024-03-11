# Configure the provider software version
terraform {
  backend "s3" {
  bucket = "backendbucket-terraform-proj"
  key    = "region1-state"
  region = "us-east-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
