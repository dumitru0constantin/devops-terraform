data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023.5.*-x86_64"]
  }
}

resource "aws_instance" "ec2_1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type
  tags = {
    Name = var.ec2_1_name
  }
}