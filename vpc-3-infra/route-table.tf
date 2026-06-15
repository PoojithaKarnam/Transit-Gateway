# Public Route table created and route path from route table to internet gateway
resource "aws_route_table" "vpc-3-pub-route-table" {
  vpc_id = aws_vpc.vpc-3.id
  route {
    gateway_id = aws_internet_gateway.vpc-3-igw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = var.v3-pub-rt-name
  }
}

# Private Route table created and route path from route table to nat gateway
resource "aws_route_table" "vpc-3-pri-route-table" {
  vpc_id = aws_vpc.vpc-3.id
  route {
    gateway_id = aws_nat_gateway.vpc-3-ngw.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = var.v3-pri-rt-name
  }
}