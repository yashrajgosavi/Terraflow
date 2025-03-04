resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = kubernetes_namespace.argocd.metadata[0].name
  values = [templatefile("${path.module}/configs/argocd-values.yaml", {
    ARGOCD_ADMIN_PASSWORD_BCRYPT = var.argocd_admin_password_bcrypt
  })]
  provider   = helm
  depends_on = [kubernetes_namespace.argocd]
}
