variable "region-name" {
  type        = string
  description = "Name of the region to deploy to"
}

variable "iam-user-name" {
  type        = string
  description = "Name of the IAM user"
}

variable "iam-user-count" {
  type        = number
  description = "Number of IAM users to create"
}