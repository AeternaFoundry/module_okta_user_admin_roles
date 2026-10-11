variable "user_admin_roles" {
  description = <<EOT
Map of user_admin_roles, attributes below
Required:
    - admin_roles
    - user_id
Optional:
    - disable_notifications
EOT

  type = map(object({
    admin_roles           = set(string)
    user_id               = string
    disable_notifications = optional(bool)
  }))
}

