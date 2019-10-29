# Users
resource "opsgenie_user" "first" {
  username  = "Firstuser@domain.com"
  full_name = "First User"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "second" {
  username  = "Seconduser@domain.com"
  full_name = "Second User "
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

# Team
resource "opsgenie_team" "team" {
  name        = "pgr301"
  description = " A description for this team."

  member {
    id   = "1"
    role = "admin"
  }

  member {
    id   = "2"
    role = "user"
  }
}
