output "user_admin_roles_id" {
  description = "Map of id values across all user_admin_roles, keyed the same as var.user_admin_roles except keys with no id are omitted"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_admin_roles_admin_roles" {
  description = "Map of admin_roles values across all user_admin_roles, keyed the same as var.user_admin_roles except keys with no admin_roles are omitted"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.admin_roles if v.admin_roles != null && length(v.admin_roles) > 0 }
}
output "user_admin_roles_disable_notifications" {
  description = "Map of disable_notifications values across all user_admin_roles, keyed the same as var.user_admin_roles except keys with no disable_notifications are omitted"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.disable_notifications if v.disable_notifications != null }
}
output "user_admin_roles_user_id" {
  description = "Map of user_id values across all user_admin_roles, keyed the same as var.user_admin_roles except keys with no user_id are omitted"
  value       = { for k, v in okta_user_admin_roles.user_admin_roles : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

