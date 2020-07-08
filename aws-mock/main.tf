provider "aws" {
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_force_path_style         = true
  insecure = true
  skip_region_validation = true
  skip_get_ec2_platforms = true
  endpoints {
    ec2 = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com/aws-mock/ec2-endpoint/"
  }
}
variable "instance_type" {
  description = "AWS instance type"
  default = "t2.micro"
}
variable "department" {
  description = "Department tag"
}
resource "aws_instance" "machine1" {
  ami = "ami-04b9e92b5572fa0d1"
  instance_type = "t2.micro"
  tags = {
    department = var.department
  }
 }
