variable "credentials" {
  description = "Credentials"
  default = "./keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default = "placeng"
}

variable "region" {
  description = "Region"
  default = "europe-west1"
}

variable "location" {
  description = "Project Location"
  default = "EU"
}

variable "bq_dataset_name" {
  description = "BigQuery Dataset Name"
  default = "test_dataset"
}

variable "gcs_bucket_name" {
  description = "Storage Bucket Name"
  default = "placeng-test-bucket-eu"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default = "STANDARD"
}