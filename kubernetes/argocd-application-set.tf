resource "kubectl_manifest" "application_set_test" {
  yaml_body = <<EOT
  apiVersion: argoproj.io/v1alpha1
  kind: ApplicationSet
  metadata:
    name: product-backend-test
    namespace: argocd
  spec:
    generators:
    - git:
        repoURL: https://github.com/yashrajgosavi/argo-cd-helm-charts
        revision: main
        directories:
        - path: apps/*
        - exclude: true      
          path: apps/backup/
    template:
      metadata:
        name: '{{path.basename}}-test'
      spec:
        project: product-test
        syncPolicy:
          automated:
            prune: true
            selfHeal: true
        source:
          helm:
            valueFiles:
              - values-test.yaml
          repoURL: https://github.com/yashrajgosavi/argo-cd-helm-charts
          targetRevision: main
          path: '{{path}}'
        destination:
          namespace: product-test
          server: https://kubernetes.default.svc
  EOT
  depends_on = [ argocd_project.test ]
}

# resource "argocd_application_set" "application_set_prod" {
#   yaml_body = [templatefile("./configs/ApplicationSet/product-prod.yaml", {})]
#   depends_on = [ argocd_project.prod ]
# }
