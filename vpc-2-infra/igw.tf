#Internet Gateway is attached to mumbai region VPC means VPC-2
resource "aws_internet_gateway" "vpc-1-igw" {
  vpc_id = aws_vpc.vpc-2.id
  tags = {
    Name = var.v2-igw-name
  }
}