terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.project_name}-bucket-${random_id.bucket_id.hex}"
  acl    = "private"
  tags = {
    Name = "${var.project_name}-bucket"
  }
}
