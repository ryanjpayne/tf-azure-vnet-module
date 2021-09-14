# Create VNET and Subnets

resource "azurerm_virtual_network" "vnet" {
  name                = var.networkName
  location            = var.location
  resource_group_name = var.resourceGroupName
  address_space       = var.networkCidr

  # Private Subnets
  subnet {
    name           = "${var.networkName}-private-1"
    address_prefix = cidrsubnet(var.networkCidr, 3, 0)
  }
  subnet {
    name           = "${var.networkName}-private-2"
    address_prefix = cidrsubnet(var.networkCidr, 3, 1)
  }
  subnet {
    name           = "${var.networkName}-priavte-3"
    address_prefix = cidrsubnet(var.networkCidr, 3, 2)
  }
  # Public Subnets
  subnet {
    name           = "${var.networkName}-public-1"
    address_prefix = cidrsubnet(var.networkCidr, 3, 3)
  }
  subnet {
    name           = "${var.networkName}-public-2"
    address_prefix = cidrsubnet(var.networkCidr, 3, 4)
  }
  subnet {
    name           = "${var.networkName}-public-3"
    address_prefix = cidrsubnet(var.networkCidr, 3, 5)
  }

  tags = {
    Environment = var.environment
  }
}
