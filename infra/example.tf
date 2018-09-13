# Provider configuration
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

# Configuration for AWS s3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "julius-tf-bucket-example"
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

# Configuration for Route 53 record
resource "aws_route53_record" "www" {
  name    = "${var.route53_domain_name}"
  zone_id = "${var.route53_domain_zoneid}"
  type    = "A"
  alias {
    zone_id = "${aws_s3_bucket.example_bucket.hosted_zone_id}"
    evaluate_target_health = true
  }
}
