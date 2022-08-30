variable "names" {
  default = ["ranga","ravs", "tom", "jane"]
  #default = ["ranga", "tom", "jane"]
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
  region  = "us-east-1"
  //version = "~> 2.46" (No longer necessary)
}

resource "aws_iam_user" "my_iam_users" {
#   count = length(var.names)
#   name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
 }