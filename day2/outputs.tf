output "instance_public_ips" {
  description = "Public IP addresses of the deployed EC2 instance(s)"
  value       = aws_instance.lab_instance.*.public_ip # Uses a splat expression to get all IPs
}

output "instance_ids" {
  description = "IDs of the deployed EC2 instance(s)"
  value       = aws_instance.lab_instance.*.id
}



