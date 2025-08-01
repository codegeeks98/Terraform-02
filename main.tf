terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  required_version = ">= 1.2"
}


provider "aws" {
    region = "us-east-1"
}

# plan-execute

#To create 2 users
resource "aws_iam_user" "my_iam_users" {
    
    count = 2
    name = "my_iam_user_${count.index}"

}