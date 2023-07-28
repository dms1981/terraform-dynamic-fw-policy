terraform {
  required_providers {
    aws = {
      version = "~> 5.10"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0"
}