# AWS Infrastructure Provisioning using Terraform

## Overview
This Terraform configuration provisions the following infrastructure on AWS:
1. A VPC with public and private subnets.
2. An EC2 instance in the private subnet.
3. An RDS PostgreSQL database instance in the private subnet.
4. Security groups for managing traffic.
5. IAM roles and policies.
6. A Lambda function interacting with the RDS PostgreSQL database.
7. An API Gateway to route requests to the Lambda function.

## Setup Instructions

### Prerequisites
- Terraform installed on your local machine.
- AWS CLI configured with appropriate credentials.

### Steps
1. Clone the repository.
2. Navigate to the repository directory.
3. Initialize Terraform:
   ```sh
   terraform init

4.Apply the Terraform configuration:

  terraform apply
  You will be prompted to confirm the apply action. Type yes and press Enter.

5.Tear DOWN configuration:

  To destroy the infrastructure, run:
 ```sh
 terraform destroy
 You will be prompted to confirm the destroy action. Type yes and press Enter.