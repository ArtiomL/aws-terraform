# ACM Input Variables

variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

# --- DNS --- #

variable "zone_id" {
  description = "Route 53 zone ID"
}

# --- Tags --- #

variable "tag_name" {
  description = "Name tag"
  default     = "AWSLabs"
}

variable "tag_environment" {
  description = "Environment tag"
  default     = "Prod"
}

variable "tags_shared" {
  description = "Other tags assigned to all resources"
  type        = "map"

  default = {
    Owner        = "T.Durden"
    BusinessUnit = "Paper Street Soap Co."
    Department   = "Mischief"
    CostCenter   = "7741"
    Project      = "Mayhem"
  }
}
