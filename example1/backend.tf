terraform {
  backend "s3" {
    bucket = "terraformd63"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
}