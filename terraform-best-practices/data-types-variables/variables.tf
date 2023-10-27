variable "instance-name" {
    type = number
    default = 98
    description = "Name for Instance"
}
variable "instance-type" {
    type = list(string)
    default = ["t2.micro","t2.medium","t2.large"]
    description = "Value for Instance type"
}