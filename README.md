# Azure Infrastructure Deployment with Terraform

This repository contains Terraform configurations for deploying resources on Microsoft Azure. It is designed to automate the provisioning of a resource group and storage account using variable management.

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
   git clone https://github.com/Sanidhya-Vats/Terraform.git
   cd Terraform

2.Set your Azure credentials: Ensure you are authenticated with Azure CLI:

  ``bash
  az login
Customize the variables: Open terraform.tfvars and modify the variables according to your requirements.

3.**Deploying Infrastructure**
a.**Initialize Terraform**:

  ``bash
  Copy code
  terraform init
b.**Plan the deployment**:

  ``bash
  Copy code
  terraform plan
c.**Apply the configuration**:

``bash
Copy code
terraform apply
**Confirm the action when prompted.**

4.**Cleaning Up**
To remove the resources created by Terraform, run:

``bash
Copy code
terraform destroy


**Contributing**
Contributions are welcome! Please open an issue or submit a pull request if you have suggestions or improvements.

**License**
This project is licensed under the MIT License.

**Acknowledgments**
Thank you for checking out this repository! Feel free to connect if you have any questions or feedback.

