terraform {
  required_providers {
    aws = {
      version = "~> 5.7"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0"
}