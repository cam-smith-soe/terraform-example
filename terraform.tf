terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
  shared_credentials_file = "/Users/cls/.aws/credentials"
  profile                 = "soei-sandbox"
}


resource "aws_ssm_parameter" "favourite_colour" {
  name  = "favourite_colour"
  type  = "String"
  value = "Red"
}
