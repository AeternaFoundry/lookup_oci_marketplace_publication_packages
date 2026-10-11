output "marketplace_publication_packages_lookup_id" {
  description = "Map of id values across all marketplace_publication_packages_lookup, keyed the same as var.marketplace_publication_packages_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_marketplace_publication_packages.marketplace_publication_packages_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_publication_packages_lookup_filter" {
  description = "Map of filter values across all marketplace_publication_packages_lookup, keyed the same as var.marketplace_publication_packages_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_marketplace_publication_packages.marketplace_publication_packages_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "marketplace_publication_packages_lookup_package_type" {
  description = "Map of package_type values across all marketplace_publication_packages_lookup, keyed the same as var.marketplace_publication_packages_lookup except keys with no package_type are omitted"
  value       = { for k, v in data.oci_marketplace_publication_packages.marketplace_publication_packages_lookup : k => v.package_type if v.package_type != null && length(v.package_type) > 0 }
}
output "marketplace_publication_packages_lookup_package_version" {
  description = "Map of package_version values across all marketplace_publication_packages_lookup, keyed the same as var.marketplace_publication_packages_lookup except keys with no package_version are omitted"
  value       = { for k, v in data.oci_marketplace_publication_packages.marketplace_publication_packages_lookup : k => v.package_version if v.package_version != null && length(v.package_version) > 0 }
}
output "marketplace_publication_packages_lookup_publication_id" {
  description = "Map of publication_id values across all marketplace_publication_packages_lookup, keyed the same as var.marketplace_publication_packages_lookup except keys with no publication_id are omitted"
  value       = { for k, v in data.oci_marketplace_publication_packages.marketplace_publication_packages_lookup : k => v.publication_id if v.publication_id != null && length(v.publication_id) > 0 }
}
output "marketplace_publication_packages_lookup_publication_packages" {
  description = "Map of publication_packages values across all marketplace_publication_packages_lookup, keyed the same as var.marketplace_publication_packages_lookup except keys with no publication_packages are omitted"
  value       = { for k, v in data.oci_marketplace_publication_packages.marketplace_publication_packages_lookup : k => v.publication_packages if v.publication_packages != null && length(v.publication_packages) > 0 }
}

