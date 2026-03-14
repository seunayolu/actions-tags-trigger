# variables.tf
variable "project" {
  description = "Short project identifier, used in all resource names"
  type        = string
}

variable "environment" {
  description = "Deployment environment: dev, testing, prod"
  type        = string
}