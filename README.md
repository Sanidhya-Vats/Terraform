
# Terraform Virtual Network and Subnet Deployment

This branch contains Terraform configurations for provisioning a virtual network (VNet) and associated subnets in Azure. It demonstrates how to create a secure and isolated network environment for your resources.

## Project Overview

The **vnet-subnet** branch is designed to showcase how to set up a virtual network and subnets in Azure using Terraform. This setup is essential for organizing and securing cloud resources by defining network boundaries.

## File Structure

The branch contains the following files:

- **`main.tf`**: The main Terraform configuration file for provisioning the virtual network and subnets.
- **`variables.tf`**: Defines the input variables for customization, including VNet address space, subnet names, and CIDR ranges.
- **`terraform.tfvars`**: Contains variable values specific to the deployment, such as VNet name, location, and subnet configurations.
- **`outputs.tf`**: Specifies the outputs for the deployed resources, including the VNet ID and subnet IDs.
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
   git checkout vnet-subnet
   ```

2. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements, such as the VNet name, address space, and subnet configurations.

### Deploying the Virtual Network and Subnets

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

You can copy and paste this into your `README.md` file for the VNet and subnet branch. Let me know if you need any adjustments or additional sections!
