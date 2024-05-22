provider "aws" {
  region = "us-east-1"
}

variable "ami_value" {
  description = "Enter ami value"
}

variable "instance_type_value" {
  description = "Enter instance type"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "prod" = "t2.medium"
  }
}

module "ec2-instance" {
    source = "./modules"
    ami_value = var.ami_value
    instance_type_value = lookup(var.instance_type_value, terraform.workspace, "t2.micro")
}