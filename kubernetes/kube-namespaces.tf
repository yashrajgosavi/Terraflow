resource "kubernetes_namespace" "namespace-test" {
  metadata {
    name = "test"
  }
}