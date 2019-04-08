resource "aws_instance" "web" {
  count = "2"
  ami = "ami-013e04dfa544cfe54"
  instance_type = "t2.micro"
  key_name = "Clientvisit2019"
  security_groups = ["${var.security_g}"]
  tags {
    Name = "Terraform-${count.index + 1}"
  }

}
