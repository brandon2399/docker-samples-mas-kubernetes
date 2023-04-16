provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "k8s" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "k8s"
  location            = var.location
  resource_group_name = azurerm_resource_group.k8s.name
  dns_prefix          = "k8s"

  linux_profile {
    admin_username = "k8sadmin"
    ssh_key {
      key_data = "<SSH public key>"
    }
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  agent_pool_profile {
    name            = "default"
    count           = 3