zones = ["aade.me", "360ace.net"]
records = {
  "pg" = {
    domain = "aade.me"
    name   = "*"
    record = "aade.ddns.net"
    type   = "CNAME"
    proxied = false
  }
  "elastic-cloud" = {
    domain = "aade.me"
    name   = "_elastic_domain_challenge"
    record = "424a6e4a562ff0f99bc8cbadc61e2cf262ba9cc70b98eab4c6027466f45c678b"
    type   = "TXT"
    proxied = false
  }
}