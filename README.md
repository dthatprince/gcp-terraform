
# Creating GCP Infrastructure with Terraform

This project demonstrates the creation of Google Cloud Platform (GCP) infrastructure using Terraform. It specifically sets up a Google Storage Bucket in the `europe-west1` region with the help of a service account for authentication.

## Prerequisites

Before you begin, ensure you have the following installed:
- Terraform v1.0 or higher
- gcloud (Google Cloud CLI)

You should also have a GCP account and a configured `gcloud` CLI with the appropriate permissions.

## Configuring the Service Account

1. **Create a service account in GCP:**

   Go to the Google Cloud Console -> IAM & Admin -> Service Accounts, and create a new service account with the necessary permissions for creating and managing storage buckets.

2. **Generate a key for the service account:**

   Once the service account is created, generate a new JSON key file from the same Service Accounts page. Download this file; you will use it to authenticate Terraform to your GCP.

3. **Set the environment variable for authentication:**

   Set the `GOOGLE_APPLICATION_CREDENTIALS` environment variable to the path of the JSON key file. This allows Terraform to authenticate as the service account.

   ```bash
   export GOOGLE_APPLICATION_CREDENTIALS="path_to_your_service_account_file.json"
   ```

## Terraform Configuration

The Terraform configuration includes the required providers and declares a single resource: a Google Cloud Storage bucket. Here's a brief overview of the configuration:

- **Provider:** Google Cloud (specified version 6.17.0), authenticated via the service account.
- **Resource:** Google Storage Bucket named `placeng-test-bucket-eu` in the `EU` location with a lifecycle rule that aborts incomplete multipart uploads that are older than 1 day.

## Usage

To use this project, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone [URL to your Git repository]
   cd [repository-name]
   ```

2. **Initialize Terraform:**

   ```bash
   terraform init
   ```

   This will download the necessary Terraform provider for Google Cloud.

3. **Execute the Terraform commands:**

   After setting the `GOOGLE_APPLICATION_CREDENTIALS` environment variable, execute the commands listed in the `commands.txt` file to deploy the infrastructure. Ensure you are in the project's root directory.

   ```bash
   bash commands.txt
   ```

4. **Apply the Terraform configuration:**

   If the `commands.txt` file does not include the apply step, run:

   ```bash
   terraform init
   ```

   ```bash
   terraform plan
   ```

   ```bash
   terraform apply
   ```

   Confirm the action to create the infrastructure on GCP. This step will actually create the Google Storage Bucket as defined in your configuration.

5. **Destroy the infrastructure (optional):**

   If you need to remove the infrastructure created by Terraform, you can use:

   ```bash
   terraform destroy
   ```

   This will remove all resources created by this Terraform configuration.

