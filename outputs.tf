output "shared_images_id" {
  description = "Map of id values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shared_images_accelerated_network_support_enabled" {
  description = "Map of accelerated_network_support_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.accelerated_network_support_enabled if v.accelerated_network_support_enabled != null }
}
output "shared_images_architecture" {
  description = "Map of architecture values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.architecture if v.architecture != null && length(v.architecture) > 0 }
}
output "shared_images_confidential_vm_enabled" {
  description = "Map of confidential_vm_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.confidential_vm_enabled if v.confidential_vm_enabled != null }
}
output "shared_images_confidential_vm_supported" {
  description = "Map of confidential_vm_supported values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.confidential_vm_supported if v.confidential_vm_supported != null }
}
output "shared_images_description" {
  description = "Map of description values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.description if v.description != null && length(v.description) > 0 }
}
output "shared_images_disk_controller_type_nvme_enabled" {
  description = "Map of disk_controller_type_nvme_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.disk_controller_type_nvme_enabled if v.disk_controller_type_nvme_enabled != null }
}
output "shared_images_disk_types_not_allowed" {
  description = "Map of disk_types_not_allowed values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.disk_types_not_allowed if v.disk_types_not_allowed != null && length(v.disk_types_not_allowed) > 0 }
}
output "shared_images_end_of_life_date" {
  description = "Map of end_of_life_date values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.end_of_life_date if v.end_of_life_date != null && length(v.end_of_life_date) > 0 }
}
output "shared_images_eula" {
  description = "Map of eula values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.eula if v.eula != null && length(v.eula) > 0 }
}
output "shared_images_gallery_name" {
  description = "Map of gallery_name values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.gallery_name if v.gallery_name != null && length(v.gallery_name) > 0 }
}
output "shared_images_hibernation_enabled" {
  description = "Map of hibernation_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.hibernation_enabled if v.hibernation_enabled != null }
}
output "shared_images_hyper_v_generation" {
  description = "Map of hyper_v_generation values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.hyper_v_generation if v.hyper_v_generation != null && length(v.hyper_v_generation) > 0 }
}
output "shared_images_identifier" {
  description = "Map of identifier values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "shared_images_location" {
  description = "Map of location values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.location if v.location != null && length(v.location) > 0 }
}
output "shared_images_max_recommended_memory_in_gb" {
  description = "Map of max_recommended_memory_in_gb values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.max_recommended_memory_in_gb if v.max_recommended_memory_in_gb != null }
}
output "shared_images_max_recommended_vcpu_count" {
  description = "Map of max_recommended_vcpu_count values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.max_recommended_vcpu_count if v.max_recommended_vcpu_count != null }
}
output "shared_images_min_recommended_memory_in_gb" {
  description = "Map of min_recommended_memory_in_gb values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.min_recommended_memory_in_gb if v.min_recommended_memory_in_gb != null }
}
output "shared_images_min_recommended_vcpu_count" {
  description = "Map of min_recommended_vcpu_count values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.min_recommended_vcpu_count if v.min_recommended_vcpu_count != null }
}
output "shared_images_name" {
  description = "Map of name values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.name if v.name != null && length(v.name) > 0 }
}
output "shared_images_os_type" {
  description = "Map of os_type values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.os_type if v.os_type != null && length(v.os_type) > 0 }
}
output "shared_images_privacy_statement_uri" {
  description = "Map of privacy_statement_uri values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.privacy_statement_uri if v.privacy_statement_uri != null && length(v.privacy_statement_uri) > 0 }
}
output "shared_images_purchase_plan" {
  description = "Map of purchase_plan values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.purchase_plan if v.purchase_plan != null && length(v.purchase_plan) > 0 }
}
output "shared_images_release_note_uri" {
  description = "Map of release_note_uri values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.release_note_uri if v.release_note_uri != null && length(v.release_note_uri) > 0 }
}
output "shared_images_resource_group_name" {
  description = "Map of resource_group_name values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "shared_images_specialized" {
  description = "Map of specialized values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.specialized if v.specialized != null }
}
output "shared_images_tags" {
  description = "Map of tags values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "shared_images_trusted_launch_enabled" {
  description = "Map of trusted_launch_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.trusted_launch_enabled if v.trusted_launch_enabled != null }
}
output "shared_images_trusted_launch_supported" {
  description = "Map of trusted_launch_supported values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.trusted_launch_supported if v.trusted_launch_supported != null }
}

