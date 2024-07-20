resource "aws_instance" "ubuntu" {
    count = var.instance_count
    ami = data.aws_ami.ubuntu
    instance_type = "t2.medium"
    key_name = "rohitmryadav2"
    vpc_security_group_ids = [aws_security_group.demo-sg.id]
    #user_data = file("jenkins.sh")
    root_block_device {
      volume_size = 25  # Size of the root volume in GB
      volume_type = "gp3"  # General Purpose SSD (default)
  }
    tags = {
            Name = "var.instancenametag"
    }
    
#     provisioner "file" {
#     source      = "jenkins.tar.gz"
#     destination = "/home/ec2-user/"

#   # Connection is necessary for file provisioner to work
#     connection {
#       type        = "ssh"
#       host        = self.public_ip
#       user        = "ec2-user"
#       private_key = file("rohitmryadav2.pem")
#       timeout     = "4m"
#         }
# }
}
