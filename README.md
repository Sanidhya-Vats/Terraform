
# Azure Infrastructure Deployment with Terraform

This repository contains Terraform configurations for deploying resources on Microsoft Azure. It is designed to automate the provisioning of a resource group and storage account using modular code and variable management.

## Project Overview

This project leverages Terraform to manage Azure resources efficiently. The configurations provided in this repository are modular and utilize variables for easy customization and scalability.

## File Structure

The repository contains the following files:

- **`provider.tf`**: Configures the Azure provider for Terraform.
- **`rg.tf`**: Contains the code for creating the resource group.
- **`storage.tf`**: Contains the code for creating the storage account.
- **`terraform.tfvars`**: Provides variable values for the Terraform configuration.
- **`variable.tf`**: Defines the variables used in the Terraform configuration.
- **`README.md`**: This file, providing an overview of the project.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active Microsoft Azure account.
- Azure CLI installed for authentication (optional but recommended).

### Configuration

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Set your Azure credentials**:
   Ensure you are authenticated with Azure CLI:
   ```bash
   az login
   ```

3. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements.

### Deploying Infrastructure

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Plan the deployment**:
   ```bash
   terraform plan
   ```

3. **Apply the configuration**:
   ```bash
   terraform apply
   ```

   Confirm the action when prompted.

### Cleaning Up

To remove the resources created by Terraform, run:
```bash
terraform destroy
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have suggestions or improvements.

## License

This project is licensed under the MIT License.

## Acknowledgments

Thank you for checking out this repository! Feel free to connect if you have any questions or feedback.
```

