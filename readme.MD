Deploying Azure Environments using Terraform and Managing its Deployment using Spacelift.io CICD Pipeline

## Introduction

This project of mine demonstrates how to deploy Azure environments using Terraform and manage the deployment process using Spacelift.io CI/CD pipeline. The project includes Terraform configurations for creating Azure resources such as Resource Groups, Virtual Networks, Subnets, and Network Security Groups. 

With Spacelift.io, you can automate the deployment process, ensuring that your infrastructure is always up-to-date and consistent, you can also manage your terraform states and apply the changes in a safe and controlled manner.

You can also automate the deployment process using its Pipeline feature.

## Prerequisites

Before you begin, ensure you have a working Azure AZURE account and some of the following tools in place:

- Terraform
- Azure CLI or Whichever form of Authentication you prefer to use for Azure and Terraform
- Spacelift.io account
- Github account
- Github repository
- Azure Service Principal with Contributor permissions

## Project Structure

```

.Dev/ .Prod/ .Staging/ .Test/ # Environment folders containing the following files:
├── provider.tf
├── resource-group.tf
├── compute.tf
├── securitygroup.tf
├── terraform.tfvars
├── storage.tf
├── network.tf
├── <extra resources .tf>            # Whatever you want to provision to your infra.
├── terraform.tfstate                # Do not Push this file to GitHub Repo
├── terraform.tfstate.backup         # Do not Push this file to GitHub Repo