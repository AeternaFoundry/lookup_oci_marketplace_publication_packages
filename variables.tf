variable "marketplace_publication_packages_lookup" {
  description = <<EOT
Map of marketplace_publication_packages_lookup, attributes below
Required:
    - publication_id
Optional:
    - package_type
    - package_version
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    publication_id  = string
    package_type    = optional(string)
    package_version = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

