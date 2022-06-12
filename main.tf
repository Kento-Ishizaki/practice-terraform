terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
  }

  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-20220612"
    key     = "tastylog.dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
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
