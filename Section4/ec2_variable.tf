provider "aws" {
  region     = "eu-west-3"
}
resource "aws_instance" "myec2" {
    ami = "ami-00a4e06732205ac29"
    instance_type = var.instance_type
    tags = {
      Name = "Hello TerraForm"
    }
}