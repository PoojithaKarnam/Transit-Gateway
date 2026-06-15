variable "v3-igw-name" {
    type = string
    default = "vpc-3-igw"
    description = "it's a internet gateway tag or name"  
}
variable "v3-ngw-name" {
    type = string
    default = "vpc-3-ngw"
    description = "it's a nat gateway tag or name"  
}
variable "v3-pub-rt-name" {
  type = string
  default = "vpc-3-pub-route-table"
  description = "it's a public route table name"  
}
variable "v3-pri-rt-name" {
    type = string
    default = "vpc-3-pri-route-table"
    description = "It's a private route table name" 
}
variable "v3-security-group-name" {
    type = string
    default = "vpc-3-security-group"
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
variable "v3-amazon-linux-ami" {
    type = string
    default = "ami-0e38835daf6b8a2b9"
    description = "It is amazon linux ami id" 
}
variable "instance-type" {
    type = string
    default = "t3.micro"
    description = "It is an instance type" 
}
variable "v3-key-pair" {
    type = string
    default = "poojikeypair"
    description = "It is a private and public key pair" 
}
variable "v3-pub-server-1" {
    type = string
    default = "vpc-3-pub-server"
    description = "It is a public server name/tags" 
}
variable "v3-private-server-1" {
    type = string
    default = "vpc-3-pri-server"
    description = "It is a private server name/tags" 
}
variable "v3-cidr-block-1" {
    type = string
    default = "12.0.0.0/28"
    description = "It is a cidr for subnet-1" 
}
variable "v3-cidr-block-2" {
    type = string
    default = "12.0.0.16/28"
    description = "It is a cidr for subnet-2" 
}
variable "v3-az-1" {
    type = string
    default = "ap-south-1a"
    description = "It is az-1 in mumbai region" 
}
variable "v3-az-2" {
    type = string
    default = "ap-south-1b"
    description = "It is az-2 in mumbai region" 
}
variable "v3-subnet-1-name" {
    type = string
    default = "vpc-3-pub-subnet-1"
    description = "It is public subnet name/tag" 
}
variable "v3-subnet-2-name" {
    type = string
    default = "vpc-3-pri-subnet-1"
    description = "It is private subnet name/tag" 
}
variable "vpc-3-cidr-16" {
    type = string
    default = "12.0.0.0/16"
    description = "It is a cidr-block for vpc" 
}
variable "vpc-3-name" {
    type = string
    default = "vpc-3"
    description = "It is vpc name/tag" 
}
variable "v3-region" {
    type = string
    default = "ap-south-1"
    description = "It is a region" 
}