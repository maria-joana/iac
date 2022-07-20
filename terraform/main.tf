terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.22.0"
    }
  }
}

data "terraform_remote_state" "tf_state" {
  backend   = "s3"
  workspace = terraform.workspace

  config = {
    bucket         = var.bucket_name
    dynamodb_table = var.dynamodb_table
    dynamodb_key   = var.dynamodb_key
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}
