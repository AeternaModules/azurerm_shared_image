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
    hyper_v_generation                  = optional(string) # Default: "V1"
    end_of_life_date                    = optional(string)
    eula                                = optional(string)
    trusted_launch_enabled              = optional(bool)
    disk_types_not_allowed              = optional(set(string))
    disk_controller_type_nvme_enabled   = optional(bool)
    description                         = optional(string)
    confidential_vm_supported           = optional(bool)
    confidential_vm_enabled             = optional(bool)
    architecture                        = optional(string) # Default: "x64"
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
  # --- Unconfirmed validation candidates, derived from azurerm_shared_image's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SharedImageName] !regexp.MustCompile(`^[A-Za-z0-9._-]+$`).MatchString(value)
  # path: name
  #   source:    [from validate.SharedImageName] length > 80
  # path: gallery_name
  #   source:    [from validate.SharedImageGalleryName] !r.MatchString(value)
  # path: gallery_name
  #   source:    [from validate.SharedImageGalleryName] length > 80
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: architecture
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: os_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: disk_types_not_allowed[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: end_of_life_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: hyper_v_generation
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identifier.publisher
  #   source:    [from validate.SharedImageIdentifierAttribute] length > maxLength
  # path: identifier.publisher
  #   condition: !endswith(value, ".")
  #   message:   [from validate.SharedImageIdentifierAttribute: must not end with "."]
  #   source:    [from validate.SharedImageIdentifierAttribute: must not end with "."]
  # path: identifier.publisher
  #   source:    [from validate.SharedImageIdentifierAttribute] !regexp.MustCompile(`^[A-Za-z0-9._-]+$`).MatchString(value)
  # path: identifier.offer
  #   source:    [from validate.SharedImageIdentifierAttribute] length > maxLength
  # path: identifier.offer
  #   condition: !endswith(value, ".")
  #   message:   [from validate.SharedImageIdentifierAttribute: must not end with "."]
  #   source:    [from validate.SharedImageIdentifierAttribute: must not end with "."]
  # path: identifier.offer
  #   source:    [from validate.SharedImageIdentifierAttribute] !regexp.MustCompile(`^[A-Za-z0-9._-]+$`).MatchString(value)
  # path: identifier.sku
  #   source:    [from validate.SharedImageIdentifierAttribute] length > maxLength
  # path: identifier.sku
  #   condition: !endswith(value, ".")
  #   message:   [from validate.SharedImageIdentifierAttribute: must not end with "."]
  #   source:    [from validate.SharedImageIdentifierAttribute: must not end with "."]
  # path: identifier.sku
  #   source:    [from validate.SharedImageIdentifierAttribute] !regexp.MustCompile(`^[A-Za-z0-9._-]+$`).MatchString(value)
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

