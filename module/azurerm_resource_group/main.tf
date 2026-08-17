variable "rfg" {}
  
resource "azurerm_resource_group" "rgh" {
for_each  = var.rfg
location = each.value.name
name = each.value.name
}

