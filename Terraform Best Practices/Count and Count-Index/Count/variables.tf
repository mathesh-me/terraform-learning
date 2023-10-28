variable "ami" {
  description = "Value for AMI"
  default     = "ami-123456789"
}

variable "instance-type" {
  description = "Value for Instance type"
  default     = "t2.micro"
}

variable "region-name" {
  description = "Region Name"
  default = "us-east-1"
}