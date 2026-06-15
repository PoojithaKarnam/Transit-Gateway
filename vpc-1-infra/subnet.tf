#Public subnet is created for public server
resource "aws_subnet" "vpc-1-pub-subnet-1" {
  vpc_id            = aws_vpc.vpc-1.id
  availability_zone = "ap-south-1a"
  cidr_block        = "10.0.0.0/28"
  tags = {
    Name = "vpc-1-pub-subnet-1"
  }
}
#Private subnet is created for private server 
resource "aws_subnet" "vpc-1-pri-subnet-1" {
  vpc_id            = aws_vpc.vpc-1.id
  availability_zone = "ap-south-1b"
  cidr_block        = "10.0.0.16/28"
  tags = {
    Name = "vpc-1-pri-subnet-1"
  }
}