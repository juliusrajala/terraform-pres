# Provider configuration
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

# Configuration for AWS s3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "www.juliusraja.la"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "404.html"
  }

  tags {
    Name        = "Terraform-bucket"
    Environment = "Dev"
  }
}

