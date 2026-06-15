#Public subnet is created for public server
resource "aws_subnet" "vpc-2-pub-subnet-1" {
  vpc_id            = aws_vpc.vpc-2.id
  availability_zone = var.v2-az-1
  cidr_block        = var.v2-cidr-block-1
  tags = {
    Name = var.v2-subnet-1-name
  }
}
#Private subnet is created for private server 
resource "aws_subnet" "vpc-2-pri-subnet-1" {
  vpc_id            = aws_vpc.vpc-2.id
  availability_zone = var.v2-az-2
  cidr_block        = var.v2-cidr-block-2
  tags = {
    Name = var.v2-subnet-2-name
  }
}