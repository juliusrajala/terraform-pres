# Terraform presentation repo

This is a super simplistic terraform setup for a brown-bag session.

## Setup

You need to have Terraform setup on your machine pre-running. Terraform can be installed via `brew` or from [the Terraform site](https://www.terraform.io/)

Setup your aws credentials in `secrets.tfvars`.

To finish your terraform setup, run:

```$ terraform init```

## Usage

To check the current state of your setup, you can run:

```$ terraform show```

To check up on what change you're about to commit, run:

```$ terraform plan --var-file="secrets.tfvars"```

To apply your changes, run:

```$ terraform apply --var-file="secrets.tfvars"```

License MIT @ Julius Rajala, 2018