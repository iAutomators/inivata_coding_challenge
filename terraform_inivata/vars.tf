## Inivata interview Coding challenge "Terraform Module"
## Created by candidate: Mayank Sekhar {mayankshekharsingh@gmail.com}

# This file is used for passing the Variables to support main and backend file

variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
   default = "eu-west-1"
}