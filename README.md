
# Terraform Looped Storage Account Deployment

This branch contains Terraform configurations for provisioning multiple storage accounts using a loop. This approach demonstrates how to efficiently create resources in bulk with Terraform.

## Project Overview

The **Storage-Looped** branch is designed to showcase how to use Terraform's looping constructs to create multiple storage accounts based on a specified count or list. This example is ideal for scenarios where you need to manage several storage accounts programmatically.

## File Structure

The branch contains the following files:

- **`main.tf`**: The main Terraform configuration file that provisions multiple storage accounts using loops.
- **`variables.tf`**: Defines the input variables for customization, including the number of storage accounts and their properties.
- **`terraform.tfvars`**: Contains variable values specific to the deployment, including settings like location and account prefixes.
- **`outputs.tf`**: Specifies the outputs for the deployed storage accounts, such as their names and primary access keys.
- **`README.md`**: This file, providing an overview of the branch.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active account with the cloud provider (e.g., Azure).
- Cloud CLI installed for authentication (optional but recommended).

### Configuration

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Sanidhya-Vats/Terraform.git
   cd Terraform
   git checkout Storage-Looped
   ```

2. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements, such as the number of storage accounts, prefixes, and location.

### Deploying the Storage Accounts

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

You can copy and paste this into your `README.md` file for the Storage Looped branch. Let me know if you need any modifications!
