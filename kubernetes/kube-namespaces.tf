resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
  provider = kubernetes
}
