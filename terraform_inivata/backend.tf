## Inivata interview Coding challenge "Terraform Module"
## Created by candidate: Mayank Sekhar {mayankshekharsingh@gmail.com}

# Backend infrastructure is where you can save your TF state remotely, As per Coding challenge ask we are saving our TF state in S3 bucket named my-tf-state
# This file has the s3 details to save our state file and dynamo DB details for state lock


terraform {
  backend "s3" {
    bucket = "my-tf-state"
    key    = "workspace_name/terraform.tfstate"
    region = "eu-west-1"
	dynamodb_table = "my-tf-lock"
  }
}