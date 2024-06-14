locals {
  zones = { for i, j in data.cloudflare_zones.zones.zones : j.name => j }
}