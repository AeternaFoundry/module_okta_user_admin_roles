resource "okta_user_admin_roles" "user_admin_roles" {
  for_each = var.user_admin_roles

  admin_roles           = each.value.admin_roles
  user_id               = each.value.user_id
  disable_notifications = each.value.disable_notifications
}

