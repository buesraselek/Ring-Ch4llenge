# DEFINE VARIABLES
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnet_2_name" {
  description = "The name of my Public Subnet 2"
  type        = string
}

variable "amzn_ami_name" {
  description = "The name of the ami"
  type        = string
}

variable "amzn_ami_owner" {
  description = "The owner id of the ami"
  type        = string
}

variable "web_app_ec2_type" {
  description = "The type of the EC2 instance for web app"
  type        = string
}

variable "keypair_name" {}


variable "server_ip_list" {
  type = list(any)
}

variable "next_server_number" {
  description = "next server to send the file"
}