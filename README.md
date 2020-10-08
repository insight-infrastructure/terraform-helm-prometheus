# terraform-k8s-prometheus

[![open-issues](https://img.shields.io/github/issues-raw/insight-infrastructure/terraform-k8s-prometheus?style=for-the-badge)](https://github.com/shinyfoil/terraform-k8s-prometheus/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-infrastructure/terraform-k8s-prometheus?style=for-the-badge)](https://github.com/shinyfoil/terraform-k8s-prometheus/pulls)

## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```hcl
module "this" {
  source = "github.com/shinyfoil/terraform-k8s-prometheus"
}
```
## Examples

- [defaults](https://github.com/insight-infrastructure/terraform-k8s-prometheus/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alertmanager\_subdomain | The subdomain for AlertManager | `string` | `"alertmanager"` | no |
| cloud\_platform | The cloud platform where the cluster is deployed | `string` | n/a | yes |
| deployment\_domain\_name | The domain name that will host the deployment | `string` | `""` | no |
| grafana\_subdomain | The subdomain for Grafana | `string` | `"grafana"` | no |
| issuer\_name | k8s resource name for your certificate issuer (e.g. letsencrypt) | `string` | `"letsencrypt"` | no |
| prometheus\_enabled | Bool to enable prometheus | `bool` | `true` | no |
| prometheus\_password | Password used for Prometheus authentication | `string` | `"node_exporter_password"` | no |
| prometheus\_subdomain | The subdomain for Prometheus | `string` | `"prometheus"` | no |
| prometheus\_user | Username used for Prometheus authentication | `string` | `"node_exporter_user"` | no |
| region | The region where the cluster is deployed | `string` | n/a | yes |
| slack\_api\_key | Your Slack API key to receive alerts | `string` | `""` | no |
| ssl\_enabled | Bool to enable SSL for all endpoints | `bool` | `true` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [Richard Mah](https://github.com/shinyfoil)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.