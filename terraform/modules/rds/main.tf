# main.tf
resource "aws_db_instance" "this" {
  identifier        = "nextcloud-db"
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  username          = var.username
  password          = var.password
  allocated_storage = 20
  db_subnet_group_name = aws_db_subnet_group.this.name
  vpc_security_group_ids = [var.sg_id]
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "this" {
  name       = "nextcloud-subnet-group"
  subnet_ids = var.subnet_ids
}
