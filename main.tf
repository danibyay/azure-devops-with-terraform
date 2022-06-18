resource "azuredevops_project" "myproject" {
  name        = "FlowwerDev"
  description = "Project to test the Flower plugin development"
  features = {
    testplans = "disabled"
    boards    = "disabled"
  }
}

resource "azuredevops_agent_pool" "my_pool" {
  name           = "Daniela-pool-tf"
  auto_provision = false
}
