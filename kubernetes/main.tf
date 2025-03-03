output "output-argocd-id" {
  value = kubernetes_namespace.argocd.id
}

output "output-namespace-argocd-name" {
  value = kubernetes_namespace.argocd.metadata[0].name
}

output "output-prod-id" {
  value = kubernetes_namespace.prod.id
}

output "output-namespace-prod-name" {
  value = kubernetes_namespace.prod.metadata[0].name
}

output "output-test-id" {
  value = kubernetes_namespace.test.id
}

output "output-namespace-test-name" {
  value = kubernetes_namespace.test.metadata[0].name
}