terraform {
  required_providers {
    aws = {
      version = "~> 5.8"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0"
}