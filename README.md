# Infrastructure automation with Terraform Cloud and GitHub

You can refer to the [Medium](https://www.youtube.com/watch?v=xxxxxxx) and [Youtube link](https://www.youtube.com/watch?v=hHLCCA8_yek)

## Other resources

- [Terraform Provider for Google CLoud ](https://registry.terraform.io/providers/hashicorp/google/latest/docs)
- [google_storage_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)

## Pre-requisites

- A GCP Project with Admin privileges
- A GitHub account for storing the Terraform scripts
- A Terraform Cloud free account

## Setup
> **Google Cloud**
1. Create a Service Account in [Google Cloud Console] (https://console.cloud.google.com/)
2. Assign role roles/storage.admin
3. Create a key and download the key as JSON locally

> **GitHub**
Fork this [repository](https://github.com/chanirban/tf-demo-gcp) into your own GitHub account
 
> **Terraform Cloud**
1. Create a free account in [Terraform Cloud](https://app.terraform.io/)
2. Create a new Organization and Workspace
3. Choose a Version control workflow with the GitHub repository
4. Create a new environment variable with name [GOOGLE_CREDENTIALS](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started#using-terraform-cloud-as-the-backend) with the Service Account JSON file 
> **Warning** Newline characters from the JSON key file must be removed. In Visual Studio Code, type `Ctrl + Shift + p` for the `Join Lines` command.  