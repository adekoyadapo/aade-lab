terraform {
  cloud {
    organization = "360ace"

    workspaces {
      name = "cloudflare"
    }
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}


provider "cloudflare" {
}

data "cloudflare_accounts" "accounts" {
  name = var.account_name
}

data "cloudflare_zones" "zones" {
  filter {
    account_id = data.cloudflare_accounts.accounts.accounts[0].id
    status     = "active"
  }
}

resource "cloudflare_record" "records" {
  for_each = var.records
  zone_id  = local.zones[each.value.domain].id
  name     = each.value.name
  value    = each.value.record
  type     = each.value.type
  ttl      = each.value.ttl
  comment  = "${each.key} - Created by Terraform"
  proxied  = each.value.proxied
}