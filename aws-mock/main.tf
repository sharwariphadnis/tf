provider "aws" {
region="us-east-1"
  endpoints {
    ec2 = "http://a2fc46b2ee77811e88434120e0ad2754-799062602.us-east-1.elb.amazonaws.com"
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
  availability_zone = "us-east-1a"
  tags = {
    department = var.department
  }
}
