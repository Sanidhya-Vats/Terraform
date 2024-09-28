
# Terraform VM Deployment with Azure Key Vault

This branch contains Terraform configurations for provisioning a virtual machine (VM) in Azure with integration to Azure Key Vault. It demonstrates how to securely manage secrets and keys associated with the VM.

## Project Overview

The **vm-with-keyvault-from-portal** branch is designed to showcase how to create a virtual machine in Azure while utilizing Azure Key Vault for secure management of sensitive information such as passwords and API keys. This setup enhances security by keeping secrets out of the codebase.

## File Structure

The branch contains the following files:

- **`main.tf`**: The main Terraform configuration file for provisioning the VM and Azure Key Vault.
- **`variables.tf`**: Defines the input variables for customization, including VM size, image, and Key Vault settings.
- **`terraform.tfvars`**: Contains variable values specific to the deployment, such as VM name, Key Vault name, and resource group.
- **`outputs.tf`**: Specifies the outputs for the deployed resources, including the public IP address of the VM and the Key Vault URL.
- **`README.md`**: This file, providing an overview of the branch.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active Azure account.
- Azure CLI installed for authentication (optional but recommended).

### Configuration

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Sanidhya-Vats/Terraform.git
   cd Terraform
   git checkout vm-with-keyvault-from-portal
   ```

2. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements, such as the VM name, Key Vault settings, and resource group.

### Deploying the VM with Key Vault

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

Thank you for checking out this branch! Feel free to connect if you have any questions or feedback.
```

You can copy and paste this into your `README.md` file for the VM with Key Vault branch. Let me know if you need any changes or additional sections!
