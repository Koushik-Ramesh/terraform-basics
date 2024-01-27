# DataDource to fetch the info of AMI
data "aws_ami" "example" {
    executable_users = ["self"]
    most_recent      = true
    name_regex       = "b55 - ansible-lab-image"
    owners           = ["self"]
}

resource "aws_instance" "web" {
  count         = var.howManyYouWant
  ami           = data.ams_ami.ami.image_id
  instance_type = "t3.medium"

  tags = {
    Name = "Terraform-web-Instance"
  }
}