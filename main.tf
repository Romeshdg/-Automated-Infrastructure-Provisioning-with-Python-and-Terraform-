terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.50.0"
    }
  }
}


provider "azurerm" {
  subscription_id = "subscription_id"
  client_id       = "client_id"
  client_secret   = "client_secret"
  tenant_id       = "tenant_id"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "eastus"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-virtual-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "example"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  depends_on = [
    azurerm_subnet.example,
  ]
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}
