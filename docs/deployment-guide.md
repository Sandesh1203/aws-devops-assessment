# Deployment Guide

## Phase 1: Network Infrastructure
- Created VPC: web-app-vpc (10.0.0.0/16)
- Created 4 subnets across 2 availability zones
- Created Internet Gateway: web-app-igw
- Created NAT Gateway: web-app-nat-gw-1a
- Configured public and private route tables

## Phase 2: Security Groups
- ALB Security Group: HTTP (80) from anywhere
- EC2 Security Group: HTTP (80) from ALB, SSH (22) from anywhere

## Phase 3: EC2 Instances
- Launched 2 t3.micro instances with Amazon Linux 2023
- Deployed in private subnets across different AZs
- Automated Nginx installation with custom HTML via User Data

## Phase 4: Load Balancer
- Created Target Group: web-app-tg
- Created Application Load Balancer: web-app-alb
- Registered both instances and verified health checks

## Testing Results
- Target group health: Both instances "Healthy"
- Load balancing: Page refresh shows alternating instances
- Security: EC2 instances only accessible through ALB
