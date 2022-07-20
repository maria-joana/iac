############################################################################
# AWS variables
############################################################################
variable "region" {
  description = "The AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The S3 bucket name"
  default     = "maria-joana-iac-tf-state"
}

variable "dynamodb_table" {
  description = "The DynamoDB table name"
  default     = "maria-joana-iac-tf-state-lock"
}

variable "dynamodb_key" {
  description = "The DynamoDB key"
  default     = "maria-joana-iac.tfstate"
}