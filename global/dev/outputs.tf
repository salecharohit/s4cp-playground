output "assume_admin_role_with_mfa_name" {
  value = module.assume_admin_role_with_mfa.role_name
}

output "assume_admin_role_with_mfa_arn" {
  value = module.assume_admin_role_with_mfa.role_arn
}

output "name_servers" {
  value = aws_route53_zone.default.name_servers
}

output "assume_oidc_ecr_role" {
  value = module.github_oidc_ecr_role.oidc_role
}

output "assume_k8s_admin_role_with_mfa_arn" {
  value = module.assume_k8s_admin_role_with_mfa.role_arn
}

output "assume_k8s_admin_role_with_mfa_name" {
  value = module.assume_k8s_admin_role_with_mfa.role_name
}

output "assume_k8s_developer_role_with_mfa_arn" {
  value = module.assume_k8s_developer_role_with_mfa.role_arn
}

output "assume_k8s_developer_role_with_mfa_name" {
  value = module.assume_k8s_developer_role_with_mfa.role_name
}