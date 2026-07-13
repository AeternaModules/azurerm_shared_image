variable "shared_images" {
  description = <<EOT
Map of shared_images, attributes below
Required:
    - gallery_name
    - location
    - name
    - os_type
    - resource_group_name
    - identifier (block):
        - offer (required)
        - publisher (required)
        - sku (required)
Optional:
    - accelerated_network_support_enabled
    - architecture
    - confidential_vm_enabled
    - confidential_vm_supported
    - description
    - disk_controller_type_nvme_enabled
    - disk_types_not_allowed
    - end_of_life_date
    - eula
    - hibernation_enabled
    - hyper_v_generation
    - max_recommended_memory_in_gb
    - max_recommended_vcpu_count
    - min_recommended_memory_in_gb
    - min_recommended_vcpu_count
    - privacy_statement_uri
    - release_note_uri
    - specialized
    - tags
    - trusted_launch_enabled
    - trusted_launch_supported
    - purchase_plan (block):
        - name (required)
        - product (optional)
        - publisher (optional)
EOT

  type = map(object({
    gallery_name                        = string
    location                            = string
    name                                = string
    os_type                             = string
    resource_group_name                 = string
    tags                                = optional(map(string))
    specialized                         = optional(bool)
    release_note_uri                    = optional(string)
    privacy_statement_uri               = optional(string)
    min_recommended_vcpu_count          = optional(number)
    min_recommended_memory_in_gb        = optional(number)
    max_recommended_vcpu_count          = optional(number)
    max_recommended_memory_in_gb        = optional(number)
    hyper_v_generation                  = optional(string)
    end_of_life_date                    = optional(string)
    eula                                = optional(string)
    trusted_launch_enabled              = optional(bool)
    disk_types_not_allowed              = optional(set(string))
    disk_controller_type_nvme_enabled   = optional(bool)
    description                         = optional(string)
    confidential_vm_supported           = optional(bool)
    confidential_vm_enabled             = optional(bool)
    architecture                        = optional(string)
    accelerated_network_support_enabled = optional(bool)
    hibernation_enabled                 = optional(bool)
    trusted_launch_supported            = optional(bool)
    identifier = object({
      offer     = string
      publisher = string
      sku       = string
    })
    purchase_plan = optional(object({
      name      = string
      product   = optional(string)
      publisher = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.purchase_plan == null || (length(v.purchase_plan.name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.purchase_plan == null || (v.purchase_plan.publisher == null || (length(v.purchase_plan.publisher) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.purchase_plan == null || (v.purchase_plan.product == null || (length(v.purchase_plan.product) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.max_recommended_vcpu_count == null || (v.max_recommended_vcpu_count >= 1 && v.max_recommended_vcpu_count <= 80)
      )
    ])
    error_message = "must be between 1 and 80"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.min_recommended_vcpu_count == null || (v.min_recommended_vcpu_count >= 1 && v.min_recommended_vcpu_count <= 80)
      )
    ])
    error_message = "must be between 1 and 80"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.max_recommended_memory_in_gb == null || (v.max_recommended_memory_in_gb >= 1 && v.max_recommended_memory_in_gb <= 640)
      )
    ])
    error_message = "must be between 1 and 640"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.min_recommended_memory_in_gb == null || (v.min_recommended_memory_in_gb >= 1 && v.min_recommended_memory_in_gb <= 640)
      )
    ])
    error_message = "must be between 1 and 640"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_images : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 23 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

