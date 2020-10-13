locals {
  which_template = var.ssl_enabled ? "${path.module}/prometheus_ssl.yaml" : "${path.module}/prometheus.yaml"
}

data "template_file" "prometheus" {
  template = file(local.which_template)
  vars = {
    region                 = var.region
    cloud_platform         = var.cloud_platform
    slack_api_key          = var.slack_api_key == "" ? "https://slack.com/api" : var.slack_api_key
    alertmanager_subdomain = var.alertmanager_subdomain
    grafana_subdomain      = var.grafana_subdomain
    prometheus_subdomain   = var.prometheus_subdomain
    root_domain_name       = var.deployment_domain_name
    name_of_cluster_issuer = var.issuer_name
    prometheus_user        = var.prometheus_user
    prometheus_password    = var.prometheus_password
    alertmanager_templates = var.custom_alertmanager_template_file_path == "" ? (var.custom_alertmanager_template_file_path) : ""
  }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  chart      = "prometheus-community/kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  namespace  = "kube-system"

  values = var.custom_values_file_path == "" ? [data.template_file.prometheus.rendered] : [file(var.custom_values_file_path)]
}
