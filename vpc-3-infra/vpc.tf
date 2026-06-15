#Mumbai region VPC
resource "aws_vpc" "vpc-3" {
  cidr_block = var.vpc-3-cidr-16
  tags = {
    Name = var.vpc-3-name
  }
}