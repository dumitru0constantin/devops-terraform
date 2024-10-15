output "ami_id" {
  value = data.aws_ami.app_ami.id
}

output "ec2_1_id" {
  value = aws_instance.ec2_1.id
}