
# Terraform VM Deployment with Public IP

This branch contains Terraform configurations for provisioning a generic virtual machine (VM) with an associated public IP address in a cloud environment. It demonstrates how to create a VM and make it accessible over the internet.

## Project Overview

The **vm-generic-with-public-ip** branch is designed to showcase how to provision a virtual machine with a public IP address. This example is suitable for scenarios where you need a VM that can be accessed from external networks.

## File Structure

The branch contains the following files:

- **`main.tf`**: The main Terraform configuration file for provisioning the VM and public IP.
- **`variables.tf`**: Defines the input variables for customization, including VM size, image, and network settings.
- **`terraform.tfvars`**: Contains variable values specific to the deployment, such as VM name, location, and instance type.
- **`outputs.tf`**: Specifies the outputs for the deployed VM, including the public IP address and other relevant details.
- **`README.md`**: This file, providing an overview of the branch.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active account with the cloud provider (e.g., AWS, Azure, GCP).
- Cloud CLI installed for authentication (optional but recommended).

### Configuration

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Sanidhya-Vats/Terraform.git
   cd Terraform
   git checkout vm-generic-with-public-ip
   ```

2. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements, such as the VM name, public IP settings, and resource group.

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

You can copy and paste this into your `README.md` file for the VM deployment with public IP branch. Let me know if you need any modifications or additional sections!
