terraform {
  backend "s3" {
    bucket = "terraformd63"
    key    = "example2/terraform.tfstate"
    region = "us-east-1"
  }
}