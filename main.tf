provider "aws" {
  region     = "eu-west-3"
  access_key = "XXXX"
  secret_key = "XXXX"
}

resource "aws_vpc" "mehrdad-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "mehrdad-subnet-1" {
  vpc_id            = aws_vpc.mehrdad-vpc.id
  cidr_block        = cidrsubnet(aws_vpc.mehrdad-vpc.cidr_block, 4, 1)
  availability_zone = "eu-west-3a"
}
