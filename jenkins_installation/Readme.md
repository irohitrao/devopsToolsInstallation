Terraform script to create Jenkins EC2 instance with HTTP and SSH port open via security groups.
Before running the script configure the AWS Credentials.
aws-vault exec <username>


Then run the ansible playbook by updating the inventory file with Public IP of created instance.
ansible-playbook --private-key ~/<Privatekeyfile>.pem -i inventory main.yml