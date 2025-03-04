locals {
  product = "product"

  charts_repo = {
    git_repo      = "https://github.com/yashrajgosavi/argo-cd-helm-charts"
    git_repo_name = "argo-cd-helm-charts"
  }

  argocd = {
    username    = "admin"
    password    = "0o9i8u7y"
    server_addr = "app.yokai.com"
  }

  cluster = {
    name   = "in-cluster"
    server = "https://kubernetes.default.svc"
  }
}