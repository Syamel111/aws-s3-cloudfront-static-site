variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "mini-project-6"
}

variable "budget_amount" {
  description = "Monthly budget limit in USD"
  type        = number
  default     = 5
}

variable "notification_email" {
  description = "Email for budget alerts"
  type        = string
}

