#Public subnet is created for public server
resource "aws_subnet" "vpc-3-pub-subnet-1" {
  vpc_id            = aws_vpc.vpc-3.id
  availability_zone = var.v3-az-1
  cidr_block        = var.v3-cidr-block-1
  tags = {
    Name = var.v3-subnet-1-name
  }
}
#Private subnet is created for private server 
resource "aws_subnet" "vpc-3-pri-subnet-1" {
  vpc_id            = aws_vpc.vpc-3.id
  availability_zone = var.v3-az-2
  cidr_block        = var.v3-cidr-block-2
  tags = {
    Name = var.v3-subnet-2-name
  }
}