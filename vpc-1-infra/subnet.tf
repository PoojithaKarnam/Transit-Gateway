#Public subnet is created for public server
resource "aws_subnet" "vpc-1-pub-subnet-1" {
  vpc_id            = aws_vpc.vpc-1.id
  availability_zone = var.az-1
  cidr_block        = var.cidr-block-1
  tags = {
    Name = var.subnet-1-name
  }
}
#Private subnet is created for private server 
resource "aws_subnet" "vpc-1-pri-subnet-1" {
  vpc_id            = aws_vpc.vpc-1.id
  availability_zone = var.az-2
  cidr_block        = var.cidr-block-2
  tags = {
    Name = var.subnet-2-name
  }
}