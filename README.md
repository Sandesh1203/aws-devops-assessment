# AWS DevOps Technical Assessment
## Load Balanced Web Application

### Live Application
Load Balancer URL: web-app-alb-963556721.us-east-1.elb.amazonaws.com

### Project Overview
High-availability web application deployed on AWS featuring:
- VPC with public/private subnets across 2 Availability Zones
- Application Load Balancer for traffic distribution
- EC2 instances running Nginx in private subnets
- Proper security group configurations

### Architecture
View detailed architecture: [Architecture Diagram](docs/architecture-diagram.md)

### Quick Test
```bash
curl web-app-alb-963556721.us-east-1.elb.amazonaws.com
```

### Documentation
- [Deployment Guide](docs/deployment-guide.md) - How I built this
- [Architecture Details](docs/architecture-diagram.md) - Visual diagram & components  
- [AWS Resources](docs/aws-resources.md) - Complete resource list

### Author
Sandesh Yadav - DevOps Technical Assessment  
Date: February 2026
