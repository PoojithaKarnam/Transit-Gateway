#this association for public route table in VPC-1
resource "aws_route_table_association" "vpc-1-pub-rt-association" {
  route_table_id = aws_route_table.vpc-1-pub-route-table.id
  for_each = {
    "subnet-1" = var.pub-subnet-1-association
    "subnet-2" = var.pub-subnet-2-association
    "subnet-3" = var.pub-subnet-3-association
    "subnet-4" = var.pub-subnet-4-association
  }
  subnet_id = each.value
}

#this association for private route table in VPC-1
resource "aws_route_table_association" "vpc-1-pri-rt-association" {
  route_table_id = aws_route_table.vpc-1-pri-route-table.id
  for_each = {
    "subnet-1" = var.pri-subnet-1-association
    "subnet-2" = var.pri-subnet-2-association
    "subnet-3" = var.pri-subnet-3-association
    "subnet-4" = var.pri-subnet-4-association
  }
  subnet_id = each.value
}
