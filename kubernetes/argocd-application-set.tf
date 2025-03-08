resource "helm_release" "application_set_test" {
  name       = "product-test"
  chart      = "ApplicationSet"
  namespace  = kubernetes_namespace.argocd.metadata.0.name
  timeout    = "1200"
  values     = [templatefile("./argocd/ApplicationSet/product-test.yaml", {})]
  provider   = helm
}

resource "helm_release" "application_set_prod" {
  name       = "product-prod"
  chart      = "ApplicationSet"
  namespace  = kubernetes_namespace.argocd.metadata.0.name
  timeout    = "1200"
  values     = [templatefile("./argocd/ApplicationSet/product-prod.yaml", {})]
  provider   = helm
}