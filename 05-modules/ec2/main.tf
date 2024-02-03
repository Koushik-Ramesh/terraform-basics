# Creates EC2
resource "aws_instance" "moapp" {
  ami           = "ami-0f3cbcc10e8b99542"
  instance_type = "t3.medium"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "Module-Instance"
  }
}

variable "sg" {}                # Declare the empty variable