terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "danib-tfcloud"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "azure-devops-with-terraform"
    }
  }
}
