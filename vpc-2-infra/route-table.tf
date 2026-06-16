# Public Route table created and route path from route table to internet gateway
resource "aws_route_table" "vpc-2-pub-route-table" {
  vpc_id = aws_vpc.vpc-2.id
  route {
    gateway_id = aws_internet_gateway.vpc-2-igw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = var.v2-pub-rt-name
  }
}

# Private Route table created and route path from route table to nat gateway
resource "aws_route_table" "vpc-2-pri-route-table" {
  vpc_id = aws_vpc.vpc-2.id
  route {
    gateway_id = aws_nat_gateway.vpc-2-ngw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = var.v2-pri-rt-name
  }
}
