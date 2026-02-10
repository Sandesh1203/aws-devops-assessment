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
View detailed architecture: <img width="622" height="1152" alt="AWS-DevOps-Assessment-Architecture drawio" src="https://github.com/user-attachments/assets/b7e5d01d-3c97-42d6-b0cd-6a8b8587fbf0" />

### Quick Test
```bash
curl web-app-alb-963556721.us-east-1.elb.amazonaws.com
