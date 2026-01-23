output "public_ip" {
  value = aws_instance.this.public_ip
  description = "public ip  created is"
}

output "private_ip" {
    value = aws_instance.this.private_ip
    description = "private ip is created is"
  
}