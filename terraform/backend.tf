terraform {
  backend "s3" {
    bucket = "nextcloud-juoh9999"
    key    = "nextcloud-infra/terraform.tfstate"
    region = "ap-northeast-2"
  }
}

