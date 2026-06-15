#Mumbai region VPC
resource "aws_vpc" "vpc-1" {
  cidr_block = var.vpc-cidr-16
  tags = {
    Name = var.vpc-name
  }
}