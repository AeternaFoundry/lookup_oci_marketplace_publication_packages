data "oci_marketplace_publication_packages" "marketplace_publication_packages_lookup" {
  for_each = var.marketplace_publication_packages_lookup

  publication_id  = each.value.publication_id
  package_type    = each.value.package_type
  package_version = each.value.package_version

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

