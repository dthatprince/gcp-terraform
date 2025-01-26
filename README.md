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

4.  **Set the environment variable for authentication:**
   
   Execute the terraform commands in the "commands.txt" file.
