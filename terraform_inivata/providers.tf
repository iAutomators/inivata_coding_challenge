## Coding challenge "Terraform Module"
## Created by candidate: Mayank Sekhar {mayankshekharsingh@gmail.com}

## This File defines the details of the Provider used for Our deployment


provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
  region     = "${var.AWS_REGION}"
}
