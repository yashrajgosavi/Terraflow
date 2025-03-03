terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    kubectl = {
      source = "gavinbunney/kubectl"
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

provider "kubectl" {
  config_context   = "minikube"
  config_path      = "~/.kube/config"
  load_config_file = false
}

provider "helm" {
  kubernetes {
    config_context = "minikube"
    config_path    = "~/.kube/config"
  }
}

provider "argocd" {
  config_path = "~/.config/argocd"
}