terraform {
  // We lock the terraform version because new versions are basically never backward-compatible.
  required_version = "~> 0.11.0"
}

provider "aws" {
  region = "${var.aws_region}"
  // We lock the provider version because new versions are basically never backward-compatible.
  version = "~> 1.36"
}
