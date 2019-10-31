# Users
resource "opsgenie_user" "first" {
  username  = "firstuser@domain.com"
  full_name = "First User"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_user" "second" {
  username  = "seconduser@domain.com"
  full_name = "Second User "
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

# Team
resource "opsgenie_team" "myteam" {
  name        = "pgr301"
  description = "pgr301 exam team"

  member {
    id   = "${opsgenie_user.first.id}"
    role = "admin"
  }

  member {
    id   = "${opsgenie_user.second.id}"
    role = "user"
  }
}

# Schedule & Rotation
resource "opsgenie_schedule" "schedule" {
  name        = "pgr301 schedule"
  description = "A schedule for pgr301 exam team"
  timezone    = "Europe/Norway"
  enabled     = true
  owner_team_id = "${opsgenie_team.myteam.id}"
}

