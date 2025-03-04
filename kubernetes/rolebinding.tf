resource "kubernetes_role_binding" "argocd-role-binding" {
  metadata {
    name = "argocd-server-binding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "argocd-server"
    namespace = "argocd"
  }
  depends_on = [kubernetes_namespace.argocd]
}

resource "kubernetes_role_binding" "prod-role-binding" {
  metadata {
    name = "product-prod-rb"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "view"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "default"
    namespace = "product-prod"
  }
  depends_on = [kubernetes_namespace.prod]
}

resource "kubernetes_role_binding" "test-role-binding" {
  metadata {
    name = "product-test-rb"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "view"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "default"
    namespace = "product-test"
  }
  depends_on = [kubernetes_namespace.test]
}
