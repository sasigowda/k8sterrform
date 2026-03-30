terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53" # or ~> 5.0 for long-term flexibility
    }
  }
}

provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Environment = local.env
      Terraform   = "true"
    }
  }
}
