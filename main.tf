terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.93"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

resource "random_integer" "this" {
  max = 9999
  min = 1000
}

locals {
  random_number_suffix = random_integer.this.result
}


resource "azurerm_resource_group" "parent_group" {
  name     = "rg-${var.environment}-${local.random_number_suffix}"
  location = var.location

  tags = {
    environment   = var.environment
  }
}