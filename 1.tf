terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "myterraformgroup" {
  name     = "K8s-test"
#  location = "eastus"
}
resource "azurerm_kubernetes_cluster" "demo" {
  name                = "demo-aks"
  location            = data.azurerm_resource_group.myterraformgroup.location
  resource_group_name = data.azurerm_resource_group.myterraformgroup.name
  dns_prefix          = "demo-aks"

  default_node_pool {
    name                = "default"
    node_count          = 1
    vm_size             = "Standard_D2_v2"
    type                = "VirtualMachineScaleSets"
    availability_zones  = []
    enable_auto_scaling = false
#    min_count           = 1
#   max_count           = 1
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
    network_policy    = "calico"
  }

  tags = {
    Environment = "Development"
  }
}
