# AWS Resources Created

## Network Infrastructure
- VPC: web-app-vpc (10.0.0.0/16)
- Internet Gateway: web-app-igw
- NAT Gateway: web-app-nat-gw-1a
- Subnets: 4 total (2 public, 2 private)
- Route Tables: web-app-public-rt, web-app-private-rt

## Security
- ALB Security Group: web-app-alb-sg
- EC2 Security Group: web-app-ec2-sg
- Key Pair: web-app-keypair

## Compute & Load Balancing
- EC2 Instances: web-app-server-1a, web-app-server-1b (t3.micro)
- Application Load Balancer: web-app-alb
- Target Group: web-app-tg
