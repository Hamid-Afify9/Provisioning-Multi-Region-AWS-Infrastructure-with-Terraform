**Terraform AWS Multi-Provider Project**

This repository provides Terraform configuration files for managing AWS infrastructure across multiple regions. It leverages modularity to enhance organization and reusability.

**Key Features:**

- **Multi-Regional Support:** Provision resources in different AWS regions, enabling geographically distributed deployments.
- **Modular Design:** Organized into reusable modules for managing specific resources like DynamoDB tables, EC2 instances, networks (VPCs, subnets), and S3 buckets.
- **Project Directories:** Separate directories for each project (`Project_East1`, `Project_East2`) facilitate regional configuration.

**Project Structure:**

```
terraform/  # Top-level Terraform configuration directory
├── modules/
│   ├── database/  # Module for managing DynamoDB tables
│   ├── webserver/  # Module for managing EC2 instances and network
│   └── s3/         # Module for managing S3 buckets
├── Project_East1/  # Configuration for US-East-1 region
│   ├── terraform.tfvars  # Project-specific variables
│   ├── provider.tf     # AWS provider configuration
│   └── ...           # Other region-specific Terraform files
├── Project_East2/  # Configuration for US-West-2 region
│   ├── terraform.tfvars  # Project-specific variables
│   ├── provider.tf     # AWS provider configuration
│   └── ...           # Other region-specific Terraform files

**Usage:**

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Hamid-Afify9/terraform-provision-multi-region-web-database-s3-bucket-on-aws
   ```

2. **Review and customize configuration:**

   - **`terraform.tfvars` files:** Configure project-specific variables in each regional directory.
   - **`provider.tf` files:** Set up AWS provider credentials and region for each project.
   - **Other configuration files:** Adjust Terraform modules or top-level configuration based on your requirements.

3. **Apply Terraform configuration:**

   Navigate to the project directory (e.g., `Project_East1`) and run:

  
   terraform init
   terraform plan
   terraform apply (if satisfied with the plan)
   ```

   Repeat these steps in each project directory to provision infrastructure.

**Additional Considerations:**

- For complex deployments, consider using Terraform workspaces to manage different environments within a project.
- Securely store AWS credentials using environment variables, Terraform Cloud remote state, or other best practices.
- Leverage Terraform state locking to prevent concurrent modifications by multiple users.
- Consider utilizing tools like Terraform Enterprise for advanced features (e.g., state management, Sentinel policy enforcement).

By following these guidelines, you can effectively utilize this Terraform project to provision and manage your AWS infrastructure across multiple regions.