provider "aws" {
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_force_path_style         = true
  insecure = true
  skip_region_validation = true
  skip_get_ec2_platforms = true
  endpoints {
    apigateway     = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    cloudformation = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    cloudwatch     = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    dynamodb       = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    es             = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    firehose       = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    kinesis        = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    lambda         = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    route53        = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    redshift       = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    s3             = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    secretsmanager = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    ses            = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    sns            = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    sqs            = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    ssm            = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    stepfunctions  = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    ec2 = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com/aws-mock/ec2-endpoint/"
    sts = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
    iam = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com/aws-mock/identity-management/"
    kms = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
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
