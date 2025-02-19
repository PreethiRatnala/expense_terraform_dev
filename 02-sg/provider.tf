terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "devopspractice-remote-state"
    key = "expense-vpc-sg"
    region = "us-east-1"
    dynamodb_table = "remote-data-lock"
    
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}