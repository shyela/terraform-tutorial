
variable "current_user_name" {
  description = "The current user's name, used to prefix all the resources"
}

variable "aws_region" {
  description = "AWS region"
  default = "us-west-2"
}

variable "aws_instance_ami" {
  description = "AMI for this EC2 instance"
  default = "ami-032509850cf9ee54e"
}

