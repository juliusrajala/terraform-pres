# Terraform presentation repo

This is a super simplistic terraform setup for a brown-bag session.

## Usage

You need to have Terraform setup on your machine pre-running. Terraform can be installed via `brew` or from [the Terraform site](https://www.terraform.io/)

Also need to setup your AWS-credentials into a `secrets.tfvars`.

After this, just run the following:

First initialize your terraform config with: `$ terraform init`

To show the diff to your changes, run: `$ terraform plan --var-file="secrets.tfvars"`

License MIT @ Julius Rajala, 2018