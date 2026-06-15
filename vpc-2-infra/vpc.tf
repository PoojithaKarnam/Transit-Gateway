#Mumbai region VPC
resource "aws_vpc" "vpc-2" {
  cidr_block = var.vpc-2-cidr-16
  tags = {
    Name = var.vpc-2-name
  }
}