variable "region" {
  default = "ap-northeast-2"
}

variable "vpc_cidr" {}
variable "public_subnets" {}
variable "private_subnets" {}
variable "ami_id" {}
variable "instance_type" {}
variable "rds_username" {}
variable "rds_password" {}
variable "s3_bucket_name" {}
variable "domain_name" {}

