variable "resource_groups" {
  type = map(object({
    location = optional(string)
    tags     = optional(map(string))
  }))
  default     = {}
  description = "Map Resource group you can override location and tag in maping"
}


variable "storage_accounts" {
  type = map(object({
    resource_group_name      = string
    location                 = string
    account_tier             = string
    access_tier              = optional(string)
    account_replication_type = string
    account_kind             = optional(string)

    enable_https_traffic_only = optional(bool)
    min_tls_version           = optional(string)

    shared_access_key_enabled = optional(bool)

    network_rules = optional(map(object({
      default_action = string
      bypass         = optional(string)
      ip_rules       = optional(set(string))

      virtual_network_subnet_ids = optional(set(string))

      private_link_access = optional(set(object({
        endpoint_resource_id = string
        endpoint_tenant_id   = optional(string)
      })))
    })))

    storage_containers = optional(map(object({
      container_access_type = optional(string)
      metadata              = optional(map(string))
    })))

    tags = optional(map(string))

  }))
}
