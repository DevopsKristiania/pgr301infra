provider "heroku" {
  version = "2.2"
}
provider "statuscake" {
  version = "1.0.0"
}
#
provider "opsgenie" {
  version = "0.2.3"
  //api_key = ""
  api_url = "api.eu.opsgenie.com"
}

terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "pgr301exam/terraform.tfstate"
    region = "eu-north-1"
  }
}