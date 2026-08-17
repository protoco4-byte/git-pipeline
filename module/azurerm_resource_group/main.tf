variable "rfg" {}

resource "azurerm_resource_group" "rgh" {
  for_each = var.rfg
  location = each.value.location
  name     = each.value.name
}

