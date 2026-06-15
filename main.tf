module "vpc-1" {
  source = "vpc-1-infra"
#------------------REGION-----------------------#
  v1-region="ap-south-1"
#------------------VPC-1-----------------------#
  vpc-name= "vpc-1"
  vpc-cidr-16="10.0.0.0/16"
#------------------INTERNET GATEWAY-----------------------#
  igw-name= "vpc-1-igw"
  ngw-name="vpc-1-nat-gateway"
#------------------SUBNETS-----------------------#
  subnet-1-name="vpc-1-pub-subnet-1"
  cidr-block-1="10.0.0.0/28"
  az-1="ap-south-1a"
  subnet-2-name="vpc-1-pri-subnet-1"
  cidr-block-2="10.0.0.16/28"
  az-2="ap-south-1b"
#------------------ROUTE TABLES-----------------------#
  pub-rt-name="vcp-1-public-route-table"
  pri-rt-name="vcp-1-private-route-table"

#-----------------ROUTE TABLES ASSOCIATIONS--------------#
  pub-subnet-1-association= aws_subnet.vpc-1-pub-subnet-1.id
  pri-subnet-1-association= aws_subnet.vpc-1-pri-subnet-1.id

#------------------SECURITY GROUP-----------------------#
  security-group-name="vpc-1-security-group"
#------------------SERVERS-----------------------#
  pub-server-1="vpc-1-public-server"
  private-server-1="vpc-1-private-server"
  amazon-linux-ami="ami-0e38835daf6b8a2b9"
  instance-type="t3.micro"
  key-pair="poojikeypair"
}

#=======================MODULE-2===========================


module "vpc-2" {
  source = "vpc-2-infra"
#------------------REGION-----------------------#
  v1-region="ap-south-1"
#------------------VPC-1-----------------------#
  vpc-2-name= "vpc-2"
  vpc-2-cidr-16="11.0.0.0/16"
#------------------INTERNET GATEWAY-----------------------#
  v2-igw-name= "vpc-2-igw"
  v2-ngw-name="vpc-2-nat-gateway"
#------------------SUBNETS-----------------------#
  v2-subnet-1-name="vpc-2-pub-subnet-1"
  v2-cidr-block-1="11.0.0.0/28"
  v2-az-1="ap-south-1a"
  v2-subnet-2-name="vpc-2-pri-subnet-1"
  v2-cidr-block-2="11.0.0.16/28"
  v2-az-2="ap-south-1b"
#------------------ROUTE TABLES-----------------------#
  v2-pub-rt-name="vcp-2-public-route-table"
  v2-pri-rt-name="vcp-2-private-route-table"

#-----------------ROUTE TABLES ASSOCIATIONS--------------#
  v2-pub-subnet-1-association= aws_subnet.vpc-2-pub-subnet-1.id
  v2-pri-subnet-1-association= aws_subnet.vpc-2-pri-subnet-1.id

#------------------SECURITY GROUP-----------------------#
  v2-security-group-name="vpc-2-security-group"
#------------------SERVERS-----------------------#
  v2-pub-server-1="vpc-2-public-server"
  v2-private-server-1="vpc-2-private-server"
  v2-amazon-linux-ami="ami-0e38835daf6b8a2b9"
  instance-type="t3.micro"
  v2-key-pair="poojikeypair"
}
#==================MODULE-3=============================
module "vpc-3" {
  source = "vpc-3-infra"
#------------------REGION-----------------------#
  v1-region="ap-south-1"
#------------------VPC-1-----------------------#
  vpc-3-name= "vpc-3"
  vpc-3-cidr-16="12.0.0.0/16"
#------------------INTERNET GATEWAY-----------------------#
  v3-igw-name= "vpc-3-igw"
  v3-ngw-name="vpc-3-nat-gateway"
#------------------SUBNETS-----------------------#
  v3-subnet-1-name="vpc-3-pub-subnet-1"
  v3-cidr-block-1="12.0.0.0/28"
  v3-az-1="ap-south-1a"
  v3-subnet-2-name="vpc-3-pri-subnet-1"
  v3-cidr-block-2="12.0.0.16/28"
  v3-az-2="ap-south-1b"
#------------------ROUTE TABLES-----------------------#
  v3-pub-rt-name="vcp-3-public-route-table"
  v3-pri-rt-name="vcp-3-private-route-table"

#-----------------ROUTE TABLES ASSOCIATIONS--------------#
  v3-pub-subnet-1-association= aws_subnet.vpc-3-pub-subnet-1.id
  v3-pri-subnet-1-association= aws_subnet.vpc-3-pri-subnet-1.id

#------------------SECURITY GROUP-----------------------#
  v3-security-group-name="vpc-3-security-group"
#------------------SERVERS-----------------------#
  v3-pub-server-1="vpc-3-public-server"
  v3-private-server-1="vpc-3-private-server"
  v3-amazon-linux-ami="ami-0e38835daf6b8a2b9"
  instance-type="t3.micro"
  v3-key-pair="poojikeypair"
}

