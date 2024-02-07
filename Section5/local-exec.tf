resource "aws_instance" "my2web" {
    ami =  "ami-01d21b7be69801c2f"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    key_name = "terraform-key"
    tags = {
        Name = "My2Ubuntu"
    }
    provisioner "local-exec"{
        command = "echo ${aws_instance.my2web.private_ip} >> private_ips.txt"
    }
}