terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
    argocd = {
      source = "argoproj-labs/argocd"
    }
  }
}

provider "kubernetes" {
  config_context = "minikube"
  config_path    = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_context = "minikube"
    config_path    = "~/.kube/config"
  }
}

provider "kubectl" {
  config_context   = "minikube"
  config_path      = "~/.kube/config"
  load_config_file = false
}