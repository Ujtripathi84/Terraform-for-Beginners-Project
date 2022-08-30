terraform {
    backend "s3" {
        bucket = "dev-applications-backend-state-in28minutes-abc"
        #key = "07-backend-state-users-dev"
        key = "dev/07-backend-state/users/backend-state"
        region = "us-east-1"
        dynamodb_table = "dev_application_locks"
        encrypt = true
    }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  //version = "~> 2.46" (No longer necessary)
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc"
}