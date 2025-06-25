# main.tf
resource "aws_instance" "this" {
  count         = 2
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = element(var.public_subnet_ids, count.index)
  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = true
  tags = {
    Name = "nextcloud-ec2-${count.index + 1}"
  }
}
