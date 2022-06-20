resource_groups = {
  "golang-example" = {
    location = "australiaeast"
    tags = {
      "environment" = "sbx"
      "terraformed" = "true"
    }
  }
}

storage_accounts = {
  "stiacazassesbx002" = {
    resource_group_name      = "golang-example"
    location                 = "australiaeast"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"

    min_tls_version = "TLS1_2"

    storage_containers = {
      "tfstate" = {}
    }

    tags = {
      "environment" = "sbx"
      "terraformed" = "true"
    }
  }
}
