
# pipeline.tf
variable "heroku-pipeline-name" {
  default = "terraform-heroku"
}

# apps.tf variables we give it a default name.
variable "heroku-develop-app" {
  default = "terraform-heroku-development"
}
variable "heroku-staging-app" {
  default = "terraform-heroku-stage"
}
variable "heroku-production-app" {
  default = "terraform-heroku-prod"
}
variable "heroku-region" {
  default = "eu"
}
variable "heroku-app-buildpacks" {
  default = [
    "heroku/java"]
  type = "list"
}
