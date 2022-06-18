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

resource "azuredevops_agent_queue" "my_queue" {
  project_id    = azuredevops_project.myproject.id
  agent_pool_id = azuredevops_agent_pool.my_pool.id
}

# Grant access to queue to all pipelines in the project
resource "azuredevops_resource_authorization" "authorize" {
  project_id  = azuredevops_project.myproject.id
  resource_id = azuredevops_agent_queue.my_queue.id
  type        = "queue"
  authorized  = true
}
