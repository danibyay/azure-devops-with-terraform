resource "azuredevops_project" "myproject" {
  name       = "FlowwerDev"
  description        = "Project to test the Flower plugin development"
  features {
    "testplans" = "disabled"
    "boards"    = "disabled"
  }
}
