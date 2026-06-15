#Public server is created for bastion host to connect private server
resource "aws_instance" "vpc-3-pub-server" {
  ami                         = var.v3-amazon-linux-ami
  instance_type               = var.instance-type
  key_name                    = var.v3-key-pair
  security_groups             = [aws_security_group.vpc-3-security-group.arn]
  subnet_id                   = aws_subnet.vpc-3-pub-subnet-1.id
/*associate_public_ip_address = true allocates a public IP to the instance, 
making it a public server accessible over the internet.*/
  associate_public_ip_address = true
  tags = {
    Name = var.v3-pub-server-1
  }
}

#Private server is created for deploying application
resource "aws_instance" "vpc-3-pri-server" {
  ami                         = var.v3-amazon-linux-ami
  instance_type               = var.instance-type
  key_name                    = var.v3-key-pair
  security_groups             = [aws_security_group.vpc-3-security-group.arn]
  subnet_id                   = aws_subnet.vpc-3-pri-subnet-1.id
/* associate_public_ip_address = false means a public IP address is not assigned to the EC2 instance,
making it a private server that cannot be accessed directly from the internet. */
  associate_public_ip_address = false
  tags = {
    Name = var.v3-private-server-1
  }

}

