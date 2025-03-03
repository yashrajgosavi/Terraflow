resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = kubernetes_namespace.argocd.metadata[0].name
  values     = [file("${path.module}/configs/argocd-values.yaml")]
  provider   = helm
  depends_on = [kubernetes_namespace.argocd]
}