terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.14.0"
    }
  }

  backend "s3" {
    bucket         = "maria-joana-iac-tf-state"
    key            = "maria-joana-iac.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "maria-joana-iac-tf-state-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
