resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
  provider = kubernetes
}

resource "kubernetes_namespace" "prod" {
  metadata {
    name = "${local.product}-prod"
  }
  provider = kubernetes
}

resource "kubernetes_namespace" "test" {
  metadata {
    name = "${local.product}-test"
  }
  provider = kubernetes
}