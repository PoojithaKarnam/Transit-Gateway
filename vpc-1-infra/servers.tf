#Public server is created for bastion host to connect private server
resource "aws_instance" "vpc-1-pub-server" {
  ami                         = "ami-0e38835daf6b8a2b9"
  instance_type               = "t3.micro"
  key_name                    = "poojikeypair"
  security_groups             = [aws_security_group.vpc-1-security-group.arn]
  subnet_id                   = aws_subnet.vpc-1-pub-subnet-1.id
/*associate_public_ip_address = true allocates a public IP to the instance, 
making it a public server accessible over the internet.*/
  associate_public_ip_address = true
  tags = {
    Name = "vpc-1-pub-server"
  }
}

#Private server is created for deploying application
resource "aws_instance" "vpc-1-pri-server" {
  ami                         = "ami-0e38835daf6b8a2b9"
  instance_type               = "t3.micro"
  key_name                    = "poojikeypair"
  security_groups             = [aws_security_group.vpc-1-security-group.arn]
  subnet_id                   = aws_subnet.vpc-1-pri-subnet-1.id
/* associate_public_ip_address = false means a public IP address is not assigned to the EC2 instance,
making it a private server that cannot be accessed directly from the internet. */
  associate_public_ip_address = false
  tags = {
    Name = "vpc-1-pri-server"
  }

}

