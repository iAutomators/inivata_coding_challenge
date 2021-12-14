Homework part 1
===================================
Terraform Module Files Explanation
-----------------------------------
 
1. Providers.tf file

This file contains the provider for AWS and AWS Access Key and Secret key as variable, whose Values are fetched from terraform.tfvars file
we can either Enter the Access key and Secret Key everytime we do a terraform Plan or apply, or we can choose the convinient way, where we can just enter the Access key and secret access
key details in terraform.tf file, it is secure way to pass the AWS Creds as suggested by Hashicorp

2. vars.tf and terraform.tfvars

You can define all the Variables in var.tf file in this case, i am passing the Access key, secret key and AWS region as variables, if you want values to stay hidden and yet to be read 
for access purpose you can give those details in terraform.tfvars file

3. Main.tf file

Contains all the resources deployment steps of the infrastructure as asked in the Coding challenge

4. Backend.tf file

backend.tf file contains the remote state to be saved in s3, and a dynamodb for state lock

5. outputs.tf file

Outputs file just shows a POC that we can print the details of the infra created in the screen as soon as Terraform apply is complete, or we can just use -o flag and get the 
deployed infra details in a Text file, In this case it will print the details of my-vpc in the screen after terraform apply is done

===========================================
Doing Terraform init
===========================================
since, s3 key i have used is a dummy key, it will show a error saying key not found
so please, remove the backend.tf file from the folder and keep it in a different folder then run terraform init
i have checked terraform init in my local is is working as expected

==========================================
Doing Terraform Plan
==========================================
The Access key and Secret Key are Dummy in terraform.tfvars file, it will show a provider Credentials error, please input a valid Access key and Secret access to see the outputs of
terraform plan, output will be as expected