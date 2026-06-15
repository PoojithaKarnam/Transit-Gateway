variable "igw-name" {
    type = string
    default = "vpc-1-igw"
    description = "it's a internet gateway tag or name"  
}
variable "ngw-name" {
    type = string
    default = "vpc-1-ngw"
    description = "it's a nat gateway tag or name"  
}
variable "pub-rt-name" {
  type = string
  default = "vpc-1-pub-route-table"
  description = "it's a public route table name"  
}
variable "pri-rt-name" {
    type = string
    default = "vpc-1-pri-route-table"
    description = "It's a private route table name" 
}
variable "security-group-name" {
    type = string
    default = "vpc-1-security-group"
    description = "It's a security group name" 
}
variable "ssh" {
    type = number
    default = 22
    description = "It allows 22 port number " 
}
variable "http" {
    type = number
    default = 80
    description = "It allows 80 port number " 
}
variable "https" {
    type = number
    default = 443
    description = "It allows 443 port number " 
}
variable "amazon-linux-ami" {
    type = string
    default = "ami-0e38835daf6b8a2b9"
    description = "It is amazon linux ami id" 
}
variable "instance-type" {
    type = string
    default = "t3.micro"
    description = "It is an instance type" 
}
variable "key-pair" {
    type = string
    default = "poojikeypair"
    description = "It is a private and public key pair" 
}
variable "pub-server-1" {
    type = string
    default = "vpc-1-pub-server"
    description = "It is a public server name/tags" 
}
variable "private-server-1" {
    type = string
    default = "vpc-1-pri-server"
    description = "It is a private server name/tags" 
}
variable "cidr-block-1" {
    type = string
    default = "10.0.0.0/28"
    description = "It is a cidr for subnet-1" 
}
variable "cidr-block-2" {
    type = string
    default = "10.0.0.16/28"
    description = "It is a cidr for subnet-2" 
}
variable "az-1" {
    type = string
    default = "ap-south-1a"
    description = "It is az-1 in mumbai region" 
}
variable "az-2" {
    type = string
    default = "ap-south-1b"
    description = "It is az-2 in mumbai region" 
}
variable "subnet-1-name" {
    type = string
    default = "vpc-1-pub-subnet-1"
    description = "It is public subnet name/tag" 
}
variable "subnet-2-name" {
    type = string
    default = "vpc-1-pri-subnet-1"
    description = "It is private subnet name/tag" 
}
variable "vpc-cidr-16" {
    type = string
    default = "10.0.0.0/16"
    description = "It is a cidr-block for vpc" 
}
variable "vpc-name" {
    type = string
    default = "vpc-1"
    description = "It is vpc name/tag" 
}
variable "v1-region" {
    type = string
    default = "ap-south-1"
    description = "It is a region" 
}

#-------------Public Route table association--------#
variable "pub-subnet-1-association" {
    type = string
    default = aws_subnet.vpc-1-pub-subnet-1.id
    description = "public subnet-1" 
}
variable "pub-subnet-2-association" {
    type = string
    default = ""
    description = "public subnet-2" 
}
variable "pub-subnet-3-association" {
    type = string
    default = ""
    description = "public subnet-3" 
}
variable "pub-subnet-4-association" {
    type = string
    default = ""
    description = "public subnet-4" 
}


#-------------Private Route table association--------#
variable "pri-subnet-1-association" {
    type = string
    default = aws_subnet.vpc-1-pri-subnet-1.id
    description = "private subnet-1" 
}
variable "pri-subnet-2-association" {
    type = string
    default = ""
    description = "private subnet-2" 
}
variable "pri-subnet-3-association" {
    type = string
    default = ""
    description = "private subnet-3" 
}
variable "pri-subnet-4-association" {
    type = string
    default = ""
    description = "private subnet-4" 
}





