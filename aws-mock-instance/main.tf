terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.17.0"
    }
  }
}

provider "aws" {
  secret_key = "aws-mock-secertkey-prelude-1b7086ed-48ce-450e-a0ab-81f83b0b6f9a"
  access_key = "aws-mock-accessid-prelude-1b7086ed-48ce-450e-a0ab-81f83b0b6f9a"
  region = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true
  insecure = true
  skip_region_validation = true
  skip_get_ec2_platforms = true
  endpoints {
    ec2 = "http://ae0eef542a41b4ffaa3aa0062f5f8b5b-1294899510.us-west-2.elb.amazonaws.com/aws-mock/ec2-endpoint/"
  }
}
resource "aws_instance" "machine3" {
  ami = "ami-00abcdef"
  instance_type = "t1.micro"
}
