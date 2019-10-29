#Terraform will create three Heroku apps when this code block is executed.

# 3 apps in heroku pipeline
resource "heroku_app" "development" {
  name = "${var.heroku-develop-app}"
  region = "${var.heroku-region}"


  buildpacks = "${var.heroku-app-buildpacks}"
}

resource "heroku_app" "staging" {
  name = "${var.heroku-staging-app}"
  region = "${var.heroku-region}"


  buildpacks = "${var.heroku-app-buildpacks}"
}

resource "heroku_app" "production" {
  name = "${var.heroku-production-app}"
  region = "${var.heroku-region}"


  buildpacks = "${var.heroku-app-buildpacks}"
}