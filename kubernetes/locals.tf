locals {
  product = "ahq"

  charts_repo = {
    git_repo      = "https://github.com/yashrajgosavi/argo-cd-helm-charts"
    git_repo_name = "argo-cd-helm-charts"
  }

  argocd = {
    username    = "admin"
    password    = "0o9i8u7y"
    server_addr = "localhost:8080"
  }

  cluster = {
    name   = "in-cluster"
    server = "https://kubernetes.default.svc"
  }
}