provider "aws" {
  region  = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check = true
  s3_force_path_style = true
  skip_region_validation = true
  skip_requesting_account_id = true
  secret_key = "aws-mock-secertkey-prelude-1b7086ed-48ce-450e-a0ab-81f83b0b6f9a"
  access_key = "aws-mock-accessid-prelude-1b7086ed-48ce-450e-a0ab-81f83b0b6f9a"
  endpoints {
    ec2 = "http://ae0eef542a41b4ffaa3aa0062f5f8b5b-1294899510.us-west-2.elb.amazonaws.com/aws-mock/ec2-endpoint"
  }
}
variable "instance_type" {
  default = "t1.micro"
}
variable "number_of_instances" {
  default = 10
}
resource "aws_vpc" "scaleperf_vpc" {
  count = 0
  cidr_block           = "10.170.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "scaleperf_test_vpc"
    scale_test = "True"
  }
}
resource "aws_subnet" "scaleperf_subnet" {
  count = 0
  cidr_block        = "10.170.64.0/18"
  vpc_id            = aws_vpc.scaleperf_vpc[0].id
  tags = {
    Name = "scaleperf_test_subnet"
    scale_test = "True"
  }
}
resource "aws_instance" "app_server" {
  count = var.number_of_instances
  ami           = "ami-0d593311db5abb72b"
  instance_type = var.instance_type
  subnet_id = "subnet-c19a6c65"
  timeouts {
    create = "90m"
  }
  tags = {
    Name = "scaleperf_test_instance-${count.index}"
    scale_test = "True"
  }
}
