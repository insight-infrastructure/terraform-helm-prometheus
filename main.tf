data "helm_repository" "prometheus-community" {
  name = "prometheus-community"
  url  = "https://prometheus-community.github.io/helm-charts"
}