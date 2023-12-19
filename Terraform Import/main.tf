provider "aws" {
  region     = "us-east-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-07f13feb262ba8b6f"
}