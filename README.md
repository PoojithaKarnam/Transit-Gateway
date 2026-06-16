# Transit-Gateway
Implemented AWS Transit Gateway infrastructure using Terraform to establish centralized connectivity between multiple VPCs, enabling scalable inter-VPC communication and simplified network management.

## AWS Transit Gateway with Terraform
## Architecture Diagram
<img src="transit%20gateway.png" alt="Transit Gateway" width="800">

This project provisions a hub-and-spoke network architecture on AWS using Terraform.

## Architecture Overview

The infrastructure consists of:

- 3 VPCs (VPC-1, VPC-2, VPC-3)
- AWS Transit Gateway for VPC-to-VPC communication
- Public and Private subnets in each VPC
- EC2 instances in public and private subnets
- Internet Gateway attached to each VPC
- NAT Gateway for outbound internet access from private subnets
- Route tables configured for Transit Gateway routing


## Components

### VPC-1
- Public subnet
- Private subnet
- Public EC2 instance
- Private EC2 instance
- NAT Gateway
- Internet Gateway

### VPC-2
- Public subnet
- Private subnet
- Public EC2 instance
- Private EC2 instance
- NAT Gateway
- Internet Gateway

### VPC-3
- Public subnet
- Private subnet
- Public EC2 instance
- Private EC2 instance
- NAT Gateway
- Internet Gateway

### Transit Gateway
AWS Transit Gateway acts as a central hub connecting all three VPCs, enabling secure communication between them without creating multiple VPC peering connections.

## Traffic Flow

- Public instances access the internet through the Internet Gateway.
- Private instances access the internet through the NAT Gateway.
- Inter-VPC communication is routed through the Transit Gateway.
- Route tables contain Transit Gateway routes for remote VPC CIDR blocks.

## Terraform Deployment

### Initialize Terraform

```bash
terraform init

terraform plan

terraform apply 
