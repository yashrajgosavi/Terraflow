variable "argocd_admin_password_bcrypt" {
  description = "Bcrypt hashed ArgoCD admin password"
  type        = string
  sensitive   = true
}
