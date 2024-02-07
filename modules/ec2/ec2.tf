resource "aws_instance" "myec2" {
    ami =  "ami-01d21b7be69801c2f"
    instance_type = var.instance_type
    security_groups = ["launch-wizard-1"]
    key_name = "terraform-key"
    tags = {
        Name = "MyUbuntu"
    }
}
 output "sg_id" {
        value = aws_instance.myec2.vpc_security_group_ids
    }