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

# kubectl config view --minify --raw -o jsonpath='{.clusters[0].cluster.server}{"\n"}{.users[0].user.client-certificate}{"\n"}{.users[0].user.client-key}{"\n"}{.clusters[0].cluster.certificate-authority}{"\n"}'

# {
#   echo "host: $(kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}')";
#   echo "cluster_ca_certificate: $(cat ~/.minikube/ca.crt | base64 -w 0)";
#   echo "client_certificate: $(cat ~/.minikube/profiles/minikube/client.crt | base64 -w 0)";
#   echo "client_key: $(cat ~/.minikube/profiles/minikube/client.key | base64 -w 0)";
# } > minikube_credentials.txt
