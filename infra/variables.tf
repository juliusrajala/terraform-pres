# AWS configuration variables loaded from file when running terraform apply/plan/etc.
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}

# Route53 variables
variable "route53_domain_name" {
  default = "www.juliusraja.la"
}
variable "route53_domain_zoneid" {
  default = "Z7YFA049AWPGN"
}
