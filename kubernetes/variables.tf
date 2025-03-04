variable "argocd_admin_password_bcrypt" {
  description = "Bcrypt hashed ArgoCD admin password"
  type        = string
  sensitive   = true
}

variable "k8s_host" {
  description = "kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}'"
  sensitive   = true
}

variable "k8s_client_certificate" {
  description = "kubectl config view --minify --raw -o jsonpath='{.users[0].user.client-certificate}'"
  sensitive   = true
}

variable "k8s_client_key" {
  description = "kubectl config view --minify --raw -o jsonpath='{.users[0].user.client-key}'"
  sensitive   = true
}

variable "k8s_cluster_ca_certificate" {
  description = "kubectl config view --minify --raw -o jsonpath='{.clusters[0].cluster.certificate-authority}'"
  sensitive   = true
}