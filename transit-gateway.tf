module "v1-module" {
  source = "./vpc-1-infra"
}

module "v2-module" {
  source = "./vpc-2-infra"
}

module "v3-module" {
  source = "./vpc-3-infra"
}

resource "aws_ec2_transit_gateway" "tgw" {
    description = "transit gateway"
    tags = {
      Name ="my-tgw"
    }
}
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw-vpc-attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id = module.v1-module.vpc_id
  subnet_ids = [module.v1-module.pub-subnet-id,
                    module.v1-module.pub-subnet-id]
}


resource "aws_ec2_transit_gateway_vpc_attachment" "tgw-vpc-2-attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id = module.v2-module.vpc_2_id
  subnet_ids = [module.v2-module.v2pub-subnet-id,
                    module.v2-module.v2pri-subnet-id]
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw-vpc-3-attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id = module.v3-module.vpc_3_id
  subnet_ids = [module.v3-module.v3-pub-subnet-id,
                    module.v3-module.v3-pri-subnet-id]
}