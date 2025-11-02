variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The Name tag for the EC2 instance"
  type        = string
  default     = "Terraform-Lab-EC2"
}

variable "instance_count" {
  description = "(Bonus) Number of EC2 instances to deploy"
  type        = number
  default     = 1 
}


