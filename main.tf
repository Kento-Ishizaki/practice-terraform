terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
  }
}

# ----------------------
# Providers
# ----------------------
provider "aws" {
  region = "ap-northeast-1"
}

# ----------------------
# Valiables
# ----------------------
variable "project" {
  type = string
}
variable "environment" {
  type = string
}
