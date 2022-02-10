## Coding challenge "Terraform Module"
## Created by candidate: Mayank Sekhar {mayankshekharsingh@gmail.com}

# Outputs file just shows a POC that we can print the details of the infra created in the screen as soon as Terraform apply is complete, or we can just use -o flag and get the 
# deployed infra details in a Text file 
# In this case it will print the details of my-vpc in the screen after terraform apply is done

output "vpc_id" {
   value = aws_vpc.my-vpc.id
}
