#Allocated Elastic IP it is used by NAT Gateway 
resource "aws_eip" "nat-eip" {
  domain = "vpc"
}

#nat gateway is created inside public subnet-1 and it is used to give internet access to the private server
resource "aws_nat_gateway" "vpc-1-ngw" {
  availability_mode = "zonal"
  subnet_id         = aws_subnet.vpc-1-pub-subnet-1.id
  connectivity_type = "public"
  allocation_id     = aws_eip.nat-eip.id
  tags = {
    Name = var.ngw-name
  }
}