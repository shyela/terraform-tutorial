terraform {
  // We lock the terraform version because new versions are basically never backward-compatible.
  required_version = "~> 0.11.0"
}

provider "aws" {
  region = "${var.aws_region}"
  // We lock the provider version because new versions are basically never backward-compatible.
  version = "~> 1.36"
}

resource "aws_instance" "main" {
  instance_type = "t2.micro"
  ami = "${var.aws_instance_ami}"

  # This will create 1 instances
  count = 1

  tags {
    Name = "${var.current_user_name}-terraform-tutorial"
  }

  associate_public_ip_address = true
  subnet_id = "subnet-33822e6b"
  vpc_security_group_ids = [
    "sg-c6260ca0"]
  key_name = "terraform-tutorial"
}
