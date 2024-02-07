provider "aws" {
  region = "eu-west-3"
}
resource "aws_iam_user" "lb" {
  name = var.usernumber
  path = "/system"
}