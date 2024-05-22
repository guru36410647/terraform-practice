provider "aws" {
  region = "us-east-1"
}

variable "ami_value" {
  description = "Enter ami value"
}

variable "instance_type_value" {
  description = "Enter instance type"
}

resource "aws_instance" "workspace1" {
  ami = var.ami_value
  instance_type = var.instance_type_value
}

