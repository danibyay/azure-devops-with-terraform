terraform {
  backend "remote" {
    # Terraform Cloud
    organization = "danib-tfcloud"
    
    workspaces {
      name = "azure-devops-with-terraform"
    }
  }
}
