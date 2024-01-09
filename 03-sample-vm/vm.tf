resource "aws_instance" "web" {
  ami           = "ami-0f3cbcc10e8b99542"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Instance"
  }
}