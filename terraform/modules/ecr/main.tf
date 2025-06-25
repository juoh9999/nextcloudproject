# main.tf
resource "aws_ecr_repository" "this" {
  name = "nextcloud-repo"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Environment = "prod"
    Project     = "nextcloud"
  }
}

