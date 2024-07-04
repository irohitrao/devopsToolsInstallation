output "sonarqube_server_ip" {
  value = aws_instance.sonarqube_server.public_ip
}

#output "jenkins_admin_password" {
#  value = aws_instance.jenkins_server.user_data # Capture the user_data content
#  depends_on = [aws_instance.jenkins_server] # Ensure the instance is created before retrieving user_data
#  description = "Jenkins Admin Password"
#}
