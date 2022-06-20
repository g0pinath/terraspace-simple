# Storage State

this module will provision sta that is used to store tfstate files.

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                               | Version |
| ------------------------------------------------------------------ | ------- |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | ~> 3.0  |

## Providers

No providers.

## Modules

| Name                                                                             | Source               | Version |
| -------------------------------------------------------------------------------- | -------------------- | ------- |
| <a name="module_resource_groups"></a> [resource_groups](#module_resource_groups) | ../../modules/az_rg  | n/a     |
| <a name="module_storage_account"></a> [storage_account](#module_storage_account) | ../../modules/az_sta | n/a     |

## Resources

No resources.

## Inputs

| Name                                                                              | Description                                                    | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | Default | Required |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | :------: |
| <a name="input_resource_groups"></a> [resource_groups](#input_resource_groups)    | Map Resource group you can override location and tag in maping | <pre>map(object({<br> location = optional(string)<br> tags = optional(map(string))<br> }))</pre>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | `{}`    |    no    |
| <a name="input_storage_accounts"></a> [storage_accounts](#input_storage_accounts) | n/a                                                            | <pre>map(object({<br> resource_group_name = string<br> location = string<br> account_tier = string<br> access_tier = optional(string)<br> account_replication_type = string<br> account_kind = optional(string)<br><br> enable_https_traffic_only = optional(bool)<br> min_tls_version = optional(string)<br><br> shared_access_key_enabled = optional(bool)<br><br> network_rules = optional(map(object({<br> default_action = string<br> bypass = optional(string)<br> ip_rules = optional(set(string))<br><br> virtual_network_subnet_ids = optional(set(string))<br><br> private_link_access = optional(set(object({<br> endpoint_resource_id = string<br> endpoint_tenant_id = optional(string)<br> })))<br> })))<br><br> storage_containers = optional(map(object({<br> container_access_type = optional(string)<br> metadata = optional(map(string))<br> })))<br><br> tags = optional(map(string))<br><br> }))</pre> | n/a     |   yes    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_groups"></a> [resource\_groups](#module\_resource\_groups) | ../../app/modules/az_rg | n/a |
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | ../../app/modules/az_sta | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_groups"></a> [resource\_groups](#input\_resource\_groups) | Map Resource group you can override location and tag in maping | <pre>map(object({<br>    location = optional(string)<br>    tags     = optional(map(string))<br>  }))</pre> | `{}` | no |
| <a name="input_storage_accounts"></a> [storage\_accounts](#input\_storage\_accounts) | n/a | <pre>map(object({<br>    resource_group_name      = string<br>    location                 = string<br>    account_tier             = string<br>    access_tier              = optional(string)<br>    account_replication_type = string<br>    account_kind             = optional(string)<br><br>    enable_https_traffic_only = optional(bool)<br>    min_tls_version           = optional(string)<br><br>    shared_access_key_enabled = optional(bool)<br><br>    network_rules = optional(map(object({<br>      default_action = string<br>      bypass         = optional(string)<br>      ip_rules       = optional(set(string))<br><br>      virtual_network_subnet_ids = optional(set(string))<br><br>      private_link_access = optional(set(object({<br>        endpoint_resource_id = string<br>        endpoint_tenant_id   = optional(string)<br>      })))<br>    })))<br><br>    storage_containers = optional(map(object({<br>      container_access_type = optional(string)<br>      metadata              = optional(map(string))<br>    })))<br><br>    tags = optional(map(string))<br><br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
