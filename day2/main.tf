# Data source to get the latest Amazon Linux 2 AMI

data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Resource to deploy the EC2 instance(s)

resource "aws_instance" "lab_instance" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  count         = var.instance_count 

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
