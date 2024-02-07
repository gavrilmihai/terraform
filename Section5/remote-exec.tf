provider "aws" {
    region = "eu-west-3"
}
resource "aws_instance" "myweb" {
    ami =  "ami-01d21b7be69801c2f"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    key_name = "terraform-key"
    tags = {
        Name = "MyUbuntuWeb"
    }
    connection {
        type     = "ssh"
        user     = "ubuntu"
        private_key = file("${path.module}/terraform-key.pem")
        host     = self.public_ip
    }
    provisioner "remote-exec" {
        inline = [
            "sudo apt-get install -y nginx",
            "sudo systemctl start nginx",
        ]
    }
}
