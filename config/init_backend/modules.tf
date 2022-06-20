
module "resource_groups" {
  source = "../../app/modules/az_rg"

  resource_groups = var.resource_groups
}

module "storage_account" {
  source = "../../app/modules/az_sta"

  storage_accounts = var.storage_accounts

  depends_on = [
    module.resource_groups
  ]
}
