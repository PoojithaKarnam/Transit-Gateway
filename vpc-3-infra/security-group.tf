#Security group allows SSH(22), http(80), https(443) and for out bound it allowing all
resource "aws_security_group" "vpc-3-security-group" {
  vpc_id = aws_vpc.vpc-3.id
#ingress means inbound
  ingress {
    from_port   = var.ssh
    to_port     = var.ssh
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = var.http
    to_port     = var.http
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = var.https
    to_port     = var.https
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#egress means outbound
  egress {
    to_port     = 0
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.v3-security-group-name
  }

}