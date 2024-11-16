variable "region" {
    type = string
    description = "Region to be set fot the resource deployment"
    default = "us-east-1"
}

variable "instancenametag-master" {
    type = string
    description = "Tag for Ec2 instance"
    default = "Terraform Provisioned Ec2"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}


variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.micro"
}