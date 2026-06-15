#this association for public route table in VPC-1
resource "aws_route_table_association" "vpc-2-pub-rt-association" {
  route_table_id = aws_route_table.vpc-2-pub-route-table.id
  for_each = {
    "subnet-1" = aws_subnet.vpc-2-pub-subnet-1.id
    "subnet-2" = ""
    "subnet-3" = ""
    "subnet-4" = ""
  }
  subnet_id = each.value  
}

#this association for private route table in VPC-1
resource "aws_route_table_association" "vpc-2-pri-rt-association" {
  route_table_id = aws_route_table.vpc-2-pri-route-table.id
   for_each = {
    "subnet-1" = aws_subnet.vpc-2-pri-subnet-1.id
    "subnet-2" = ""
    "subnet-3" = ""
    "subnet-4" = ""
  }
  subnet_id = each.value
}
