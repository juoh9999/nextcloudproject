# variables.tf
variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }
variable "sg_id" {}
variable "username" {}
variable "password" {}

