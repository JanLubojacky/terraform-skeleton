provider "aws" {
  region  = "us-east-1"
  profile = var.aws_profile
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }
  backend "s3" {} # this should be commented out for initial bootstrapping
}
