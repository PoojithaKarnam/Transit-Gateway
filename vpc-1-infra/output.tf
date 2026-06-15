output "vpc_id" {
    value = aws_vpc.vpc-1.id
}
output "pub-subnet-id" {
    value = aws_subnet.vpc-1-pub-subnet-1.id
}
output "pri-subnet-id" {
    value = aws_subnet.vpc-1-pri-subnet-1.id
}


