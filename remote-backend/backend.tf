terraform {
  backend "s3" {
    bucket = "remote-backend-demo"
    region = "us-east-1"
    key = "backup/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}