<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.records](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_accounts.accounts](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/accounts) | data source |
| [cloudflare_zones.zones](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | account name | `string` | `"Ade"` | no |
| <a name="input_records"></a> [records](#input\_records) | records to add | <pre>map(object({<br>    name    = string<br>    record  = string<br>    domain  = string<br>    proxied = optional(bool, "true")<br>    type    = optional(string, "A")<br>    ttl     = optional(number)<br>    tags    = optional(list(string), ["home_server"])<br>    id      = optional(string)<br>  }))</pre> | <pre>{<br>  "demo": {<br>    "domain": "aade.me",<br>    "name": "terraform",<br>    "record": "192.168.0.1"<br>  }<br>}</pre> | no |
| <a name="input_zones"></a> [zones](#input\_zones) | List of zones | `list(string)` | <pre>[<br>  "example.com"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_records"></a> [records](#output\_records) | Records |
<!-- END_TF_DOCS -->