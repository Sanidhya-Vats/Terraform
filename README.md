
# Terraform VM Deployment Without Key Vault

This branch contains Terraform configurations for provisioning a virtual machine (VM) in Azure without integrating Azure Key Vault. It demonstrates how to create a VM with straightforward configurations, suitable for testing and development purposes.

## Project Overview

The **vm-without-keyvault** branch is designed to showcase how to create a virtual machine in Azure without the additional complexity of a Key Vault. This example is useful for scenarios where secret management is handled differently or not needed.

## File Structure

The branch contains the following files:

- **`main.tf`**: The main Terraform configuration file for provisioning the VM.
- **`variables.tf`**: Defines the input variables for customization, including VM size, image, and network settings.
- **`terraform.tfvars`**: Contains variable values specific to the deployment, such as VM name, resource group, and location.
- **`outputs.tf`**: Specifies the outputs for the deployed VM, including the public IP address and other relevant details.
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
   git checkout vm-without-keyvault
   ```

2. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements, such as the VM name, size, and resource group.

### Deploying the VM

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

You can copy and paste this into your `README.md` file for the VM without Key Vault branch. Let me know if you need any modifications or additional sections!
