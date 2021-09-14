# tf-azure-vnet-module
Terraform module to create a standard Azure VNET
  
## Inputs  
networkName - (Required) The name of the virtual network. Changing this forces a new resource to be created.  
resourceGroupName - (Required) The name of the resource group in which to create the virtual network.  
networkCidr - (Required) The address space that is used the virtual network. You can supply more than one address space.  
location - (Required) The location/region where the virtual network is created. Changing this forces a new resource to be created.  
environment - (Required) The Environment tag to apply to new resources.  

## Example Usage  
  
```
module "example-vnet" {  
	source = "ryanjpayne/tf-azure-vnet-module"  
  
	networkName       = "example-vnet"  
	resourceGroupName = "example-rg"  
	networkCidr       = "10.0.0.0/16"  
	location          = "USGov Virginia"  
	environment       = "sandbox"  
}  
```
  
## Outputs  
vnet_id - The virtual NetworkConfiguration ID.  
vnet_name - The name of the virtual network.   
vnet_location - The location/region where the virtual network is created.  
vnet_cidr - The list of address spaces used by the virtual network.  
