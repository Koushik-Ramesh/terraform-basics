resource "aws_instance" "web" {
  ami           = "ami-0f3cbcc10e8b99542"
  instance_type = "t3.medium"

  tags = {
    Name = "Terraform-Instance"
  }
}

output "private_ip_address" {
    value = aws_instance.app.private_dns
}