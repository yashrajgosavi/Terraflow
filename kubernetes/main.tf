terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config" # Path to your kubeconfig file
  config_context = "minikube"
}

output "output-id" {
  value = kubernetes_namespace.namespace-test.id
}

output "output-namespace-name" {
  value = kubernetes_namespace.namespace-test.metadata
}