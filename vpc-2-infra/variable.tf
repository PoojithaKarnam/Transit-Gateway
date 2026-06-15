variable "v2-igw-name" {
    type = string
    default = "vpc-2-igw"
    description = "it's a internet gateway tag or name"  
}
variable "v2-ngw-name" {
    type = string
    default = "vpc-2-ngw"
    description = "it's a nat gateway tag or name"  
}
variable "v2-pub-rt-name" {
  type = string
  default = "vpc-2-pub-route-table"
  description = "it's a public route table name"  
}
variable "v2-pri-rt-name" {
    type = string
    default = "vpc-2-pri-route-table"
    description = "It's a private route table name" 
}
variable "v2-security-group-name" {
    type = string
    default = "vpc-2-security-group"
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
variable "v2-amazon-linux-ami" {
    type = string
    default = "ami-0e38835daf6b8a2b9"
    description = "It is amazon linux ami id" 
}
variable "instance-type" {
    type = string
    default = "t3.micro"
    description = "It is an instance type" 
}
variable "v2-key-pair" {
    type = string
    default = "poojikeypair"
    description = "It is a private and public key pair" 
}
variable "v2-pub-server-1" {
    type = string
    default = "vpc-2-pub-server"
    description = "It is a public server name/tags" 
}
variable "v2-private-server-1" {
    type = string
    default = "vpc-2-pri-server"
    description = "It is a private server name/tags" 
}
variable "v2-cidr-block-1" {
    type = string
    default = "11.0.0.0/28"
    description = "It is a cidr for subnet-1" 
}
variable "v2-cidr-block-2" {
    type = string
    default = "11.0.0.16/28"
    description = "It is a cidr for subnet-2" 
}
variable "v2-az-1" {
    type = string
    default = "ap-south-1a"
    description = "It is az-1 in mumbai region" 
}
variable "v2-az-2" {
    type = string
    default = "ap-south-1b"
    description = "It is az-2 in mumbai region" 
}
variable "v2-subnet-1-name" {
    type = string
    default = "vpc-2-pub-subnet-1"
    description = "It is public subnet name/tag" 
}
variable "v2-subnet-2-name" {
    type = string
    default = "vpc-2-pri-subnet-1"
    description = "It is private subnet name/tag" 
}
variable "vpc-2-cidr-16" {
    type = string
    default = "11.0.0.0/16"
    description = "It is a cidr-block for vpc" 
}
variable "vpc-2-name" {
    type = string
    default = "vpc-2"
    description = "It is vpc name/tag" 
}
variable "v2-region" {
    type = string
    default = "ap-south-1"
    description = "It is a region" 
}


