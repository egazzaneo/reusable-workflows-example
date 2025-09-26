terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source = "../../modules/s3"

  bucket_name         = var.bucket_name
  versioning_enabled  = var.versioning_enabled
  encryption_enabled  = var.encryption_enabled
  block_public_access = var.block_public_access

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
    Project     = "terraform-github-actions"
    AccountId   = "123456789012"
    Environment = "123456789012"
  }
}