#this association for public route table in VPC-1
resource "aws_route_table_association" "vpc-3-pub-rt-association" {
  route_table_id = aws_route_table.vpc-3-pub-route-table.id
  for_each = {
    "subnet-1" = aws_subnet.vpc-3-pub-subnet-1.id
  }
  subnet_id = each.value  
}

#this association for private route table in VPC-1
resource "aws_route_table_association" "vpc-3-pri-rt-association" {
  route_table_id = aws_route_table.vpc-3-pri-route-table.id
   for_each = {
    "subnet-1" = aws_subnet.vpc-3-pri-subnet-1.id
  }
  subnet_id = each.value
}