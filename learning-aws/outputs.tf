output "web_server_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web.public_ip
}

output "db_server_ip" {
  description = "Private IP address of the DB server"
  value       = aws_instance.db.private_ip
}
