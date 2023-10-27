variable "region-name" {
    type = string
    default = "us-east-1"
    description = "Name for Region"
}
variable "ami-id" {
    type = map(string)
    default = {
        ubuntu = "ami-12345"
        cetos  = "ami-87279"
        red-hat= "ami-32878"
    }
    description = "Value for AMI"
}
variable "instance-type" {
    type = list(string)
    default = ["t2.micro","t2.medium","t2.large"]
    description = "Value for Instance type"
}