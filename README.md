<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_networkfirewall_firewall_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/networkfirewall_firewall_policy) | resource |
| [aws_networkfirewall_rule_group.stateful](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/networkfirewall_rule_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fw_policy_name"></a> [fw\_policy\_name](#input\_fw\_policy\_name) | Name given to firewall policy | `string` | n/a | yes |
| <a name="input_fw_policy_rule_order"></a> [fw\_policy\_rule\_order](#input\_fw\_policy\_rule\_order) | Ordering mode for firewall policy rule assessment | `string` | `"DEFAULT_ACTION_ORDER"` | no |
| <a name="input_fw_rulegroup_capacity"></a> [fw\_rulegroup\_capacity](#input\_fw\_rulegroup\_capacity) | How many capacity units should be assigned to this rulegroup? | `string` | `"10000"` | no |
| <a name="input_fw_rulegroup_name"></a> [fw\_rulegroup\_name](#input\_fw\_rulegroup\_name) | Name given to firewall rulegroup | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | A map of values supplied to create firewall rules | `map(any)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of keys and values used to apply metadata tags | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->