output "output-id" {
  value = kubernetes_namespace.namespace-test.id
}

output "output-namespace-name" {
  value = kubernetes_namespace.namespace-test.metadata
}