Terraform AWS Multi-Provider Project
This repository contains Terraform configuration files for provisioning AWS infrastructure across multiple regions. The project is organized into modules for managing different resources and includes separate directories for different projects deployed in different AWS regions.

Projects
Project_East1
This directory contains Terraform configuration for deploying infrastructure in the AWS (US-East-1) region.

Project_West2
This directory contains Terraform configuration for deploying infrastructure in the AWS (US-West-2) region.

Modules
dynamodb: Manages DynamoDB tables.
instances: Manages EC2 instances.
networks: Manages VPCs, subnets, and other network-related resources.
s3: Manages S3 buckets.
Usage
To use this modules:

Clone the repository: git clone 
https://github.com/Hamid-Afify9/terraform-provision-multi-region-web-database-s3-bucket-on-aws
Review and customize the terraform.tfvars , provider.tfand other configuration files as needed.
Apply the Terraform configuration: terraform apply