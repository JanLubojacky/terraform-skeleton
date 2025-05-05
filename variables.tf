variable "aws_profile" {
  description = "AWS profile to use for authentication"
  type        = string
  default     = null
}

variable "env" {
  description = "Short name of the environment (dev/test/prod)"
  type        = string
}

variable "environment" {
  description = "Name of the environment: Development / Testing / Production"
  type        = string
}
