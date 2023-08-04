terraform {
  required_providers {
    aws = {
      version = "~> 5.11"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0"
}