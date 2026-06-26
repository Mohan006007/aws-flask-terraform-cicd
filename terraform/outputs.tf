output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}

output "application_url" {
  value = "http://${aws_instance.web.public_ip}"
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/aws-flask-key ubuntu@${aws_instance.web.public_ip}"
}