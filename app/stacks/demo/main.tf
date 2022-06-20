# This is where you put your resource declaration
resource "azurerm_key_vault" "example" {
  name                        = "examplevault202201"
  location                    = "australiaeast"
  resource_group_name         = "golang-example"
  enabled_for_disk_encryption = true
  tenant_id                   = "619e9c22-f628-409a-8dc6-0028dda1c685"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = "619e9c22-f628-409a-8dc6-0028dda1c685"
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}

data "azurerm_client_config" "current" {}