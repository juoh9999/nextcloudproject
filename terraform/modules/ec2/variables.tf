# variables.tf
variable "vpc_id" {}
variable "public_subnet_ids" { type = list(string) }
variable "sg_id" {}
variable "ami_id" {}
variable "instance_type" {}

