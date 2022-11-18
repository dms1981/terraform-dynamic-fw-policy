variable "fw_policy_name" {
  description = "Name given to firewall policy"
  type        = string
}

variable "fw_policy_rule_order" {
  default     = "DEFAULT_ACTION_ORDER"
  description = "Ordering mode for firewall policy rule assessment"
  type        = string
}

variable "fw_rulegroup_capacity" {
  default     = "10000"
  description = "How many capacity units should be assigned to this rulegroup?"
  type        = string
}

variable "fw_rulegroup_name" {
  description = "Name given to firewall rulegroup"
  type        = string
}

variable "rules" {
  description = "A map of values supplied to create firewall rules"
  type        = map(any)
}

variable "tags" {
  description = "A map of keys and values used to apply metadata tags"
  type     = map(any)
}