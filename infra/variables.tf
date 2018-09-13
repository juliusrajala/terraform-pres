# AWS configuration variables loaded from file when running terraform apply/plan/etc.
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
