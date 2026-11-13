output "user_admin_roles_id" {
  description = "Map of id values across all user_admin_roles, keyed the same as var.user_admin_roles"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.id }
}
output "user_admin_roles_admin_roles" {
  description = "Map of admin_roles values across all user_admin_roles, keyed the same as var.user_admin_roles"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.admin_roles }
}
output "user_admin_roles_disable_notifications" {
  description = "Map of disable_notifications values across all user_admin_roles, keyed the same as var.user_admin_roles"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.disable_notifications }
}
output "user_admin_roles_user_id" {
  description = "Map of user_id values across all user_admin_roles, keyed the same as var.user_admin_roles"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.user_id }
}

