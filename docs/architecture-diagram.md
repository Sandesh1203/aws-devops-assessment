# Architecture Diagram

## Visual Diagram
<img width="621" height="1151" alt="AWS-DevOps-Assessment-Architecture drawio" src="https://github.com/user-attachments/assets/685d372b-ad23-48a8-9edd-652d571d7010" />

## Component Details
- VPC: web-app-vpc (10.0.0.0/16)
- Internet Gateway: web-app-igw
- NAT Gateway: web-app-nat-gw-1a
- Subnets: 4 total (2 public, 2 private)
- EC2 Instances: web-app-server-1a, web-app-server-1b
- Load Balancer: web-app-alb
- Target Group: web-app-tg

## Network Architecture
- Public Subnets: 2 subnets (10.0.1.0/24, 10.0.2.0/24) across us-east-1a, us-east-1b
- Private Subnets: 2 subnets (10.0.3.0/24, 10.0.4.0/24) across us-east-1a, us-east-1b
- Security Groups: web-app-alb-sg, web-app-ec2-sg
- Route Tables: Public and private routing configured

## Traffic Flow
- Inbound: Internet → Internet Gateway → ALB → Target Group → EC2 Instances
- Outbound: EC2 Instances → NAT Gateway → Internet Gateway → Internet
- Load Balancing: ALB distributes traffic between both EC2 instances

## High Availability Features
- Multi-AZ deployment across 2 availability zones
- Load balancing with health checks
- Private subnet isolation for security
- NAT Gateway for secure outbound connectivity
