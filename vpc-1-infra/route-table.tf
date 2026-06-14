resource "aws_route_table" "vpc-1-pub-route-table" {
  vpc_id = aws_vpc.vpc-1.id
  route {
    gateway_id = aws_internet_gateway.vpc-1-igw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = "vpc-1-pub-route-table"
  }
}

resource "aws_route_table" "vpc-1-pri-route-table" {
  vpc_id = aws_vpc.vpc-1.id
  route {
    gateway_id = aws_nat_gateway.vpc-1-ngw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = "vpc-1-pri-route-table"
  }
}