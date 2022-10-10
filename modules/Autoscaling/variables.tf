variable "cw_sns_topic_arn" {
  type        = string
  description = "sns topic arn to send the cloudwatch alarm notifications to"
  default     = null
}