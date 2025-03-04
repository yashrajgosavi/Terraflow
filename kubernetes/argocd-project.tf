resource "argocd_project" "test" {
  metadata {
    name = "${local.product}-test"
  }
  spec {
    destination {
      name      = local.cluster.name
      server    = local.cluster.server
      namespace = kubernetes_namespace.test.metadata[0].name
    }
    source_repos = ["${local.charts_repo.git_repo}"]
  }
  provider = argocd
}

resource "argocd_project" "prod" {
  metadata {
    name = "${local.product}-prod"
  }
  spec {
    destination {
      name      = local.cluster.name
      server    = local.cluster.server
      namespace = kubernetes_namespace.prod.metadata[0].name
    }
    source_repos = ["${local.charts_repo.git_repo}"]
  }
  provider = argocd
}