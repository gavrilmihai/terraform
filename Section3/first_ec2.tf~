provider "aws" {
  region     = "eu-west-3"
  access_key = "AKIAXNIZCXL32KJ74A6A"
  secret_key = "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"
}
resource "aws_instance" "myec2" {
    ami = "ami-00a4e06732205ac29"
    instance_type = "t2.micro"
    tags = {
      Name = "Hello TerraForm"
    }
}
provider "azurerm" { 
}
