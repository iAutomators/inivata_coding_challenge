## Coding challenge "Terraform Module"
## Created by candidate: Mayank Sekhar {mayankshekharsingh@gmail.com}

# This file has all our main infrastructure which will be deployed in AWS and the terraform code of how a specific AWS service is deployed


# Task 1 Creating a AWS VPC

resource "aws_vpc" "my-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "my-vpc"
	Environment = "Inivata-dev"
  }
}

# Task 2 Creating a Public Subnets in my-vpc

resource "aws_subnet" "my-public-subnet" {
  vpc_id                  = "${aws_vpc.my-vpc.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-west-1a"

  tags = {
    Name = "my-public-subnet"
  }
}

# Task 3 Creating Internet Gateway for my-vpc

resource "aws_internet_gateway" "my-vpc-igw" {
  vpc_id = "${aws_vpc.my-vpc.id}"

  tags = {
    Name = "my-vpc-igw"
  }
}

# Task 4 Creating a Route Table for my-vpc

resource "aws_route_table" "my-vpc-RT" {
  vpc_id = "${aws_vpc.my-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.my-vpc-igw.id}"
	}
    tags = {
    Name = "my-vpc-RT"
  }
}

# Task 5 Creating a Route Table Association with Public

resource "aws_route_table_association" "my-public-subnet-RTA" {
  subnet_id      = "${aws_subnet.my-public-subnet.id}"
  route_table_id = "${aws_route_table.my-vpc-RT.id}"
}
  

 
