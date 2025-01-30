variable "zones" {
  description = "List of zones"
  type        = list(string)
  default     = ["example.com"]
}

variable "account_name" {
  description = "account name"
  type        = string
  default     = "Ade"
}

variable "records" {
  description = "records to add"
  type = map(object({
    name    = string
    record  = string
    domain  = string
    proxied = optional(bool, "true")
    type    = optional(string, "A")
    ttl     = optional(number)
    tags    = optional(list(string), ["home_server"])
    id      = optional(string)
  }))
  default = {
    "demo" = {
      domain = "aade.me"
      name   = "terraform"
      record = "192.168.0.1"
    }
  }
}