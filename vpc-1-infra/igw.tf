#Internet Gateway is attached to mumbai region VPC means VPC-1
resource "aws_internet_gateway" "vpc-1-igw" {
  vpc_id = aws_vpc.vpc-1.id
  tags = {
    Name = "vpc-1-igw"
  }
}