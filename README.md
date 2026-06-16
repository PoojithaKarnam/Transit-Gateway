# AWS Multi-VPC Connectivity Using Transit Gateway

## Introduction

This project demonstrates how to build a scalable AWS network architecture using Terraform and AWS Transit Gateway.

The infrastructure consists of three independent Virtual Private Clouds (VPCs), each configured with public and private subnets, security controls, internet connectivity, and compute resources. AWS Transit Gateway is used to establish centralized communication between the VPCs.

This implementation showcases Infrastructure as Code (IaC) principles by automating the provisioning and management of AWS networking components.

---

## Architecture Overview

The solution follows a hub-and-spoke model:

* Three isolated VPCs
* Public and private subnet architecture
* Internet Gateway for public resources
* NAT Gateway for private subnet internet access
* EC2 instances deployed across subnets
* AWS Transit Gateway acting as a centralized routing hub

### Architecture Diagram

<img src="transit%20gateway.png" alt="Transit Gateway" width="800">

---

## Project Structure
TRANSIT-GATEWAY/
│
├── vpc-1-infra/
│   ├── associations.tf
│   ├── igw.tf
│   ├── nat-gateway.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── route-table.tf
│   ├── security-group.tf
│   ├── servers.tf
│   ├── subnet.tf
│   ├── variable.tf
│   └── vpc.tf
│
├── vpc-2-infra/
│   ├── associations.tf
│   ├── igw.tf
│   ├── nat-gateway.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── route-table.tf
│   ├── security-group.tf
│   ├── servers.tf
│   ├── subnet.tf
│   ├── variable.tf
│   └── vpc.tf
│
├── vpc-3-infra/
│   ├── associations.tf
│   ├── igw.tf
│   ├── nat-gateway.tf
│   ├── output.tf
│   ├── provider.tf
│   ├── route-table.tf
│   ├── security-group.tf
│   ├── servers.tf
│   ├── subnet.tf
│   ├── variable.tf
│   └── vpc.tf
│
├── .gitignore
├── .terraform.lock.hcl
├── LICENSE
├── README.md
├── provider.tf
├── terraform.tfstate
├── terraform.tfstate.backup
├── transit-gateway.tf
└── transit gateway.png
### File Description

| File                                     | Purpose                                 |
| ---------------------------------------- | --------------------------------------- |
| provider.tf                              | AWS provider configuration              |
| main.tf                                  | Loads VPC modules                       |
| transit-gateway.tf                       | Creates Transit Gateway and attachments |
| variable.tf                              | Stores configurable values              |
| outputs.tf                               | Displays resource outputs               |
| Architecture Diagram Transit gateway.png | Network architecture reference          |

---

## Prerequisites

Ensure the following tools are installed before deployment:

* Terraform (v1.x or later)
* AWS CLI
* AWS Account
* IAM User with required permissions

Verify installation:

```bash
terraform version
aws --version
```

Configure AWS credentials:

```bash
aws configure
```

---

## Deployment Procedure

### Step 1: Clone Repository

```bash
git clone <repository-url>
cd TRANSIT-GATEWAY
```

### Step 2: Initialize Terraform

Downloads provider plugins and initializes the working directory.

```bash
terraform init
```

### Step 3: Validate Configuration

Checks the Terraform configuration for syntax errors.

```bash
terraform validate
```

### Step 4: Review Execution Plan

Displays the resources Terraform intends to create.

```bash
terraform plan
```

### Step 5: Deploy Infrastructure

Creates all AWS resources defined in the project.

```bash
terraform apply
```

When prompted:

```text
yes
```

Terraform will begin provisioning the infrastructure.

---

## Resources Created

### Network Components

* 3 Virtual Private Clouds (VPCs)
* 3 Internet Gateways
* 3 NAT Gateways
* Public and Private Route Tables
* Route Table Associations

### Subnets

* 3 Public Subnets
* 3 Private Subnets

### Security

* Security Groups with:

  * SSH (Port 22)
  * HTTP (Port 80)
  * HTTPS (Port 443)

### Compute Resources

* 3 Public EC2 Instances
* 3 Private EC2 Instances

### Transit Gateway Components

* AWS Transit Gateway
* Transit Gateway Attachments
* Inter-VPC Routing

---

## Connectivity Workflow

### Public Subnet Communication

* Public EC2 instances are deployed in public subnets.
* Each public instance receives a public IP address.
* Internet Gateway provides inbound and outbound internet access.

### Private Subnet Communication

* Private EC2 instances do not receive public IP addresses.
* Direct internet access is restricted.
* Access to private instances is achieved through the Bastion Host located in the public subnet.
* Outbound internet connectivity is provided using NAT Gateway.

### VPC-to-VPC Communication

* AWS Transit Gateway serves as the central networking hub.
* All three VPCs are attached to the Transit Gateway.
* Route tables direct traffic through Transit Gateway attachments.
* Resources deployed in separate VPCs can communicate securely without requiring VPC peering connections.

---

## Benefits of This Architecture

* Centralized network management
* Reduced complexity compared to multiple VPC peerings
* Scalable design for future VPC additions
* Improved network segmentation
* Secure access to private resources
* Infrastructure fully managed through Terraform

---

## Verification

After deployment, verify:

* Public EC2 instances are reachable using their public IP addresses.
* Bastion Host can access private EC2 instances.
* Transit Gateway attachments are available.
* Instances across VPCs can communicate through private IP addresses.

---

## Cleanup

To delete all provisioned resources:

```bash
terraform destroy
```

Confirm by entering:

```text
yes
```

Terraform will remove all associated AWS resources created by this project.

---

## Author

**Poojitha Karnam**

AWS | Terraform | Cloud Infrastructure Automation
