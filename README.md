# Terraform VM with Key Vault and Random Secret and Bastion

This repository contains Terraform configurations for provisioning an Azure Virtual Machine (VM) with an Azure Key Vault to securely manage secrets, including a randomly generated secret for VM access, along with a Bastion host for secure management.

## Project Overview

This project demonstrates best practices in infrastructure as code (IaC) using Terraform. It showcases modular Terraform configurations that allow users to efficiently provision, manage, and destroy cloud resources on Azure.

## File Structure

The repository contains the following directories and files:

- **`modules/`**: Contains reusable Terraform modules for different Azure resources.
- **`main.tf`**: Main configuration file that provisions the VM, Key Vault, and Bastion host.
- **`variables.tf`**: Defines the variables used across configurations.
- **`terraform.tfvars`**: Provides variable values for different environments.
- **`README.md`**: This file, providing an overview of the project.

## Overview
This Terraform setup automates the deployment of:

An Azure Virtual Machine.
An Azure Key Vault to store secrets securely.
A randomly generated secret for VM access.
An Azure Bastion host for secure SSH access to the VM.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active [Azure account](https://azure.microsoft.com/free/).
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed for authentication.

### Configuration

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Sanidhya-Vats/Terraform.git
   cd Terraform/vm-with-keyvault-randomsecret-bastion
   ```

2. **Customize the variables**:
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

### Accessing the VM

Once the resources are provisioned, access the VM through the Bastion host:

1. Navigate to the Azure Portal.
2. Go to your resource group and select the Bastion host.
3. Click on "Bastion" and then "Connect" to access your VM via the web.

### Accessing Secrets

To retrieve the randomly generated secret from the Key Vault:

1. Use Azure CLI:

   ```bash
   az keyvault secret show --name <your-secret-name> --vault-name <your-keyvault-name>
   ```

2. Replace `<your-secret-name>` and `<your-keyvault-name>` with the names you've set in your Terraform configuration.

### Cleaning Up

To remove the resources created by Terraform, run:
```bash
terraform destroy
```

Confirm the action when prompted.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have suggestions or improvements.

## License

This project is licensed under the MIT License.

## Acknowledgments

Thank you for checking out this repository! Feel free to connect if you have any questions or feedback.
