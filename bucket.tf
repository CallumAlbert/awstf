terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
backend "s3" {
    bucket         	   = "tfstates3backendgobackslash"
    key              	   = "state/terraform.tfstate"
    region         	   = "eu-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }

  required_version = ">= 0.15"
}





  provider "aws" {
  region = "eu-west-2"
  profile= "default"
  }

resource "aws_s3_bucket" "tfstate"{
  bucket = var.bucket_name
}


