terraform {
  required_version = "= 1.8.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
    # You can specify other providers here if needed
    }
}

provider "aws" {
  region = "ap-south-1"
  # You can add other provider configuration settings here if needed
}