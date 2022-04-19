terraform {
  backend "s3" {
    bucket = "terraformd63"
    key    = "roboshop-basic-setup/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}