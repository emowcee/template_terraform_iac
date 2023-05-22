# Infrastructure as Code (IaC) with Terraform

This project demonstrates the use of Terraform, an Infrastructure as Code (IaC) tool, to provision a simple web application infrastructure on AWS. It sets up an EC2 instance running an Apache web server with a basic HTML page.

## Prerequisites

Before you begin, ensure you have the following:

- An AWS account with the necessary permissions to create and manage resources.
- Terraform installed on your local machine.

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository:

   ```bash
   git clone <repository_url>
   
2. Navigate to the project directory:

    ```bash
    cd infrastructure-as-code-terraform
    
3. Initialize the Terraform configuration:

    ```bash
    terraform init
    
4. Review the `main.tf` file to ensure it matches your requirements. You can modify the instance type, AMI, and other parameters if needed.

5. Optionally, update the region in the `provider "aws"` block of the `main.tf` file.

6. Create the infrastructure by running:

   ```bash
   terraform apply
   ```

   Confirm the changes when prompted.

7. Wait for Terraform to provision the infrastructure. Once completed, it will display the public IP address of the web server.

8. Visit the web server in a web browser using the public IP address. You should see the basic HTML page.

9. When you are finished with the project, destroy the infrastructure to avoid ongoing costs:

   ```bash
   terraform destroy
   ```

   Confirm the destruction when prompted.

## Project Structure

The project follows the following structure:

```
.
├── main.tf
├── variables.tf
├── outputs.tf
└── scripts
    └── userdata.sh
```

- `main.tf`: Defines the infrastructure resources to be provisioned, such as EC2 instances and security groups.
- `variables.tf`: Contains the input variables used in the `main.tf` file.
- `outputs.tf`: Specifies the outputs to display after provisioning the infrastructure.
- `scripts/userdata.sh`: A script that is executed when the EC2 instance starts and installs Apache web server.

Feel free to modify and extend the project as per your requirements.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
```

Feel free to modify the README file to suit your specific project requirements and provide additional information if needed.
