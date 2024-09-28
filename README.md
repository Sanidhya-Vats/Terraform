
# Terraform Storage Account Deployment

This branch contains Terraform configurations for provisioning a storage account in a cloud environment. It demonstrates best practices in infrastructure as code (IaC) using Terraform.

## Project Overview

The **Storage-Account-Normal** branch is designed to showcase how to create a standard storage account on your chosen cloud provider. This example includes the necessary configurations for setting up a storage account with optimal settings.

## File Structure

The branch contains the following files:

- **`main.tf`**: The main Terraform configuration file for provisioning the storage account.
- **`variables.tf`**: Defines the input variables for customization, such as location and account name.
- **`terraform.tfvars`**: Contains variable values specific to the deployment, including settings for the storage account.
- **`outputs.tf`**: Specifies the outputs for the deployed storage account, such as the account name and primary access key.
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
   git checkout Storage-Account-Normal
   ```

2. **Customize the variables**:
   Open `terraform.tfvars` and modify the variables according to your requirements, such as the storage account name, location, and performance tier.

### Deploying the Storage Account

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

You can copy and paste this into your `README.md` file for the Storage Account Normal branch. Let me know if you need any adjustments!
