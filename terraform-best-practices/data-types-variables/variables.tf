variable "instance-name" {
    type = number
    description = "Name for Instance"
}
variable "instance-type" {
    type = list()
    default = ["t2.micro","t2.medium","t2.large"]
    description = "Value for Instance type"
}