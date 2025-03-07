output "id" {
  description = "The ID of the EC2"
  value       = aws_instance.this.id
}

output "arn" {
  description = "The ARN of the EC2"
  value       = aws_instance.this.arn
}

output "public_ip" {
  value = aws_instance.this.public_ip
}