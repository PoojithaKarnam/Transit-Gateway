#Internet Gateway is attached to mumbai region VPC means VPC-1
resource "aws_internet_gateway" "vpc-3-igw" {
  vpc_id = aws_vpc.vpc-3.id
  tags = {
    Name = var.v3-igw-name
  }
}