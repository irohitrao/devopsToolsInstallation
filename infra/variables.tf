variable "region" {
    type = string
    description = "Region to be set fot the resource deployment"
    default = "us-east-1"
}

variable "instancenametag" {
    type = string
    description = "Tag for Ec2 instance"
    default = "Terraform Provisioned Ec2"
}