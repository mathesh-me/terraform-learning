provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "user" {
  name = "user.${count.index}"
  count = 3
  path = "/system/"
}

output "zipmap" {
  value = zipmap(aws_iam_user.user[*].name, aws_iam_user.user[*].arn)
}