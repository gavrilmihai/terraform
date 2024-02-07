provider "aws" {
  region = "eu-west-3"
}
resource "aws_eip" "lb" {
  domain   = "vpc"
}
output "public-ip" {
  value = aws_eip.lb.public_ip
}
output "public-url" {
  value = "https://${aws_eip.lb.public_ip}:8080"
}
output "lb_values" {
  value = aws_eip.lb
}