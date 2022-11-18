resource "aws_cloudwatch_log_group" "main" {
  name              = var.cloudwatch_log_group_name
  retention_in_days = 365 # 0 = never expire
  tags              = var.tags
}