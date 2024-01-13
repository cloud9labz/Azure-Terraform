#Azure Virtual Network
resource "azurerm_virtual_network" "my-Virtual-Network" {
  name                = var.vnet_name
  location            = azurerm_resource_group.my-resource-Group-name.location
  resource_group_name = azurerm_resource_group.my-resource-Group-name.name
  address_space       = [var.vnet_address_space]

}

#Azure Subnet
resource "azurerm_subnet" "my-subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.my-resource-Group-name.name
  virtual_network_name = azurerm_virtual_network.my-Virtual-Network.name
  address_prefixes     = [var.subnet_address_prefixes]
}

# Azure Public IP
resource "azurerm_public_ip" "my-public-ip" {
  count               = var.node_count
  name                = "${var.publicip_name}${count.index}"
  resource_group_name = azurerm_resource_group.my-resource-Group-name.name
  location            = azurerm_resource_group.my-resource-Group-name.location
  allocation_method   = "Static"
  domain_name_label   = "${var.domain_label_name}${random_string.random-character.id}${count.index}"
}
#Azure Network Interface
resource "azurerm_network_interface" "my-virtual-network-interface" {
  count               = var.node_count
  name                = "${var.network_interface_name}${count.index}"
  location            = azurerm_resource_group.my-resource-Group-name.location
  resource_group_name = azurerm_resource_group.my-resource-Group-name.name

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = azurerm_subnet.my-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = element(azurerm_public_ip.my-public-ip[*].id, count.index)
  }
}