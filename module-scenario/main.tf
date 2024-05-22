provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules"
  ami_value = "ami-04ff98ccbfa41c9ad"
  instance_type_value = "t2.micro"
}
