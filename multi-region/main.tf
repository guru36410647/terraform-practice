provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
}

resource "aws_instance" "multi-region-1" {
  ami = "ami-04ff98ccbfa41c9ad"
  instance_type = "t2.micro"
  provider = aws.us-east-1
}

resource "aws_instance" "multi-region-2" {
    ami = "ami-0cbe318e714fc9a82"
    instance_type = "t2.micro"
    provider = aws.us-west-1
}
  
