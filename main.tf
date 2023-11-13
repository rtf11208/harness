terraform {

  required_version = ">= 0.12"

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = ">= 2.0, < 4.0" # Specify the desired version constraint

    }

  }

}

provider "aws" {

  region = "us-east-1" # Modify with your desired AWS region

}

resource "aws_s3_bucket" "example" {

  bucket = "ronnie-harness-bucket-practice" # Replace with your desired bucket name

  # acl    = "public-read"  # Vulnerability: Public ACL

  acl = "private" # You can adjust the ACL (Access Control List) as needed
 
  versioning {

    enabled = true

  }
 
  tags = {

    Name = "My Example S3 Bucket"

  }

}
