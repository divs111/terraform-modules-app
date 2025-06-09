Terraform AWS EC2 Infrastructure as Code (IaC) Module

A reusable Terraform module for provisioning EC2 instances across different environments (dev/stage/prod) with customizable configurations.

## Features

- 🚀 Creates EC2 instances with configurable count per environment
- 🔐 Built-in security groups with SSH access
- 📦 Root volume configuration with environment-specific sizing
- 🏷️ Automatic naming/tagging based on environment
- 🛠️ Supports custom AMIs and instance types

## Module Structure
terraform-ec2-module/
├── infra-app/ # Module directory
│ ├── ec2.tf # EC2 instances, key pairs, SGs
│ ├── outputs.tf # Public IPs, instance names
│ └── variables.tf # Input variables
├── examples/ # Usage examples
│ └── dev-environment/ # Sample implementation
│ └── main.tf
├── main.tf # Root module
├── outputs.tf # Root outputs
├── variables.tf # Root variables
└── README.md # This file

