resource "aws_route_table_association" "vpc-1-pub-rt-association" {
  route_table_id = aws_route_table.vpc-1-pub-route-table.id
  subnet_id      = aws_subnet.vpc-1-pub-subnet-1.id
}

resource "aws_route_table_association" "vpc-1-pri-rt-association" {
  route_table_id = aws_route_table.vpc-1-pri-route-table.id
  subnet_id      = aws_subnet.vpc-1-pri-subnet-1.id
}