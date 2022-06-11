provider "aws" {
 secret_key = "aws-mock-secertkey-prelude-1b7086ed-48ce-450e-a0ab-81f83b0b6f9a"
 access_key = "aws-mock-accessid-prelude-1b7086ed-48ce-450e-a0ab-81f83b0b6f9a"
 region = "us-east-1"
 skip_credentials_validation = true
 skip_metadata_api_check = true
 skip_requesting_account_id = true
 s3_force_path_style = true
 insecure = true
 skip_region_validation = true
 skip_get_ec2_platforms = true
 endpoints {
 ec2 = "http://ad3554453643e4883a0734ef30ece6ce-532856250.us-west-2.elb.amazonaws.com/aws-mock/ec2-endpoint/"
 }
}
resource "aws_instance" "machine1" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine2" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine3" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine4" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine5" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine6" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine7" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine8" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine9" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
resource "aws_instance" "machine10" {
 ami = "ami-04b9e92b5572fa0d1"
 instance_type = "t2.micro"
}
