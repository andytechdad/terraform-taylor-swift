data "http" "taylor" {
  url = "https://api.taylor.rest"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

locals {
  quote = jsondecode(data.http.taylor.body)
}
