resource "aws_instance" "vpc-1-pub-server" {
    ami="ami-0e38835daf6b8a2b9"
    instance_type = "t3.micro"
    key_name = "poojikeypair"
    security_groups = [ aws_security_group.vpc-1-security-group.arn ]
    subnet_id = aws_subnet.vpc-1-pub-subnet-1.id
    associate_public_ip_address = true
    tags = {
      Name ="vpc-1-pub-server"
    }
}

resource "aws_instance" "vpc-1-pri-server" {
    ami="ami-0e38835daf6b8a2b9"
    instance_type = "t3.micro"
    key_name = "poojikeypair"
    security_groups = [ aws_security_group.vpc-1-security-group.arn ]
    subnet_id = aws_subnet.vpc-1-pri-subnet-1.id
    associate_public_ip_address = false
    tags = {
      Name ="vpc-1-pri-server"
    }
  
}

