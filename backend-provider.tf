terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use a modern, stable version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# 1. S3 Bucket for Terraform State File
# Replace "your-unique-terraform-state-bucket" with a globally unique name.

resource "aws_s3_bucket" "terraform_state" {
  bucket = "dev-bucket-state-lab2.0"

  # Prevents accidental destruction of the state bucket
  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "Terraform State Storage"
    Environment = "DevOps"
  }
}


