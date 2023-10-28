variable "ami" {
  description = "Value for AMI"
  default     = "ami-123456789"
}

variable "instance-type" {
    type = list(string)
  description = "Value for Instance type"
  default     = ["t2.micro","t2.medium","t2.large"]
}

variable "region-name" {
  description = "Region Name"
  default = "us-east-1"
}