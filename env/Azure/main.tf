terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "linux-server" {
  source           = "../../modules/servers"
  linux-password   = var.linux_password
  linux-user       = "adminfrb03"
  environment      = "dev"
  cantidad-servers = 1
}

