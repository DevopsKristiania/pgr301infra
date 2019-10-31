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
resource "opsgenie_team" "team" {
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
  description = "schedule for pgr301 exam team"
  timezone    = "Europe/Norway"
  enabled     = false
  owner_team_id = "${opsgenie_team.team.id}"
}

resource "opsgenie_schedule_rotation" "rotation" {
  name = "pgr301 schedule rotation"
  schedule_id = "${opsgenie_schedule.schedule.id}"
  start_date = "2019-10-31T00:00:00Z"
  end_date = "2019-11-31T09:00:00Z"
  type = "weekly"
  participant {
    type = "user"
    id = "${opsgenie_user.first.id}"
  }
}
