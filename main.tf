resource "aws_networkfirewall_firewall_policy" "main" {
  name = replace(title(var.fw_policy_name), "/-|_/", "")
  firewall_policy {
    stateful_engine_options {
      rule_order = var.fw_policy_rule_order
    }
    stateful_rule_group_reference {
      priority     = 1
      resource_arn = aws_networkfirewall_rule_group.stateful.arn
    }
    stateless_default_actions          = ["aws:forward_to_sfe"]
    stateless_fragment_default_actions = ["aws:drop"]
  }

  tags = var.tags
}

resource "aws_networkfirewall_rule_group" "stateful" {
  capacity = var.fw_rulegroup_capacity
  name     = replace(title(var.fw_rulegroup_name), "/-|_/", "")
  type     = "STATEFUL"

  rule_group {
    stateful_rule_options {
      rule_order = var.fw_policy_rule_order
    }
    rules_source {
      dynamic "stateful_rule" {
        for_each = var.rules
        content {
          action = stateful_rule.value.action
          header {
            destination      = stateful_rule.value.destination_ip
            destination_port = stateful_rule.value.destination_port
            direction        = "ANY"
            protocol         = stateful_rule.value.protocol
            source_port      = "ANY"
            source           = stateful_rule.value.source_ip
          }
          rule_option {
            keyword = format("sid:%s", index(keys(var.rules), stateful_rule.key) + 1)
          }
        }
      }
    }
  }
  lifecycle {
    create_before_destroy = true
  }
}