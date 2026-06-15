output "vpc_3_id" {
    value = aws_vpc.vpc-3.id
}
output "v3-pub-subnet-id" {
    value = aws_subnet.vpc-3-pub-subnet-1.id
}
output "v3-pri-subnet-id" {
    value = aws_subnet.vpc-3-pri-subnet-1.id
}
