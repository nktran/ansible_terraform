resource "aws_instance" "terraform" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  key_name = "terraform"
  security_groups = ["${aws_security_group.allow_rdp.name}"]

  tags          = {
    Name        = "Application Server"
    Environment = "production"
  }

}

