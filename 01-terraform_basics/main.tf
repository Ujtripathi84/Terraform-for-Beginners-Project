terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # VERSION IS NOT NEEDED HERE
}

#PLAN-EXECUTE
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-ujtripathi84-001"
    versioning {
        enabled = true
    }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated" 
}

#STATE
# DESIRED = KNOWN = ACTUAL