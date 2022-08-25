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
    ec2 = "http://ad3554453643e4883a0734ef30ece6ce-532856250.us-west-2.elb.amazonaws.com/aws-mock/ec2-endpoint/"
  }
}
resource "aws_instance" "machine3" {
  ami = "ami-12345678"
  instance_type = "t2.micro"
}
