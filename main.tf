terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}



resource "aws_s3_bucket" "jhcbuckettest1" {
  bucket = "jhcbuckettest1"
  acl    = "private"

  tags = {
    Name        = "Bucket"
    Environment = "JHC Bucket"
  }
}
