resource "aws_eip" "nat-eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "vpc-1-ngw" {
  availability_mode = "zonal"
  subnet_id         = aws_subnet.vpc-1-pub-subnet-1.id
  connectivity_type = "public"
  allocation_id     = aws_eip.nat-eip.id
  tags = {
    Name = "vpc-1-ngw"
  }
}