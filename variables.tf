variable "cloudwatch_log_group_name" {
  description = "Name for CloudWatch log group"
}

variable "tags" {
  description = "A map of keys and values used to apply metadata tags"
  default     = map(any)
}