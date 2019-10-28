provider "heroku" {
  version = "2.2"
}

terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "pgr301exam/terraform.tfstate"
    region = "eu-north-1"
  }
}