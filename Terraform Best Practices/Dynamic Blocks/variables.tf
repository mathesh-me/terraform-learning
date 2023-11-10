variable "sg-ports" {
  type        = list(number)
  description = "List of ports to open"
}

variable "sg-name" {
  type        = string
  description = "Name of the security group"
}