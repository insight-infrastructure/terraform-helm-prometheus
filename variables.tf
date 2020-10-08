# DNS
variable "alertmanager_subdomain" {
  description = "The subdomain for AlertManager"
  type        = string
  default     = "alertmanager"
}

variable "grafana_subdomain" {
  description = "The subdomain for Grafana"
  type        = string
  default     = "grafana"
}

variable "prometheus_subdomain" {
  description = "The subdomain for Prometheus"
  type        = string
  default     = "prometheus"
}

variable "deployment_domain_name" {
  description = "The domain name that will host the deployment"
  type        = string
  default     = ""
}

# Cluster
variable "cloud_platform" {
  description = "The cloud platform where the cluster is deployed"
  type        = string
}

variable "region" {
  description = "The region where the cluster is deployed"
  type        = string
}

# SSL
variable "ssl_enabled" {
  description = "Bool to enable SSL for all endpoints"
  type        = bool
  default     = true
}

variable "issuer_name" {
  description = "k8s resource name for your certificate issuer (e.g. letsencrypt)"
  type        = string
  default     = "letsencrypt"
}

# Prometheus
variable "prometheus_enabled" {
  description = "Bool to enable prometheus"
  type        = bool
  default     = true
}

variable "prometheus_user" {
  description = "Username used for Prometheus authentication"
  type        = string
  default     = "node_exporter_user"
}

variable "prometheus_password" {
  description = "Password used for Prometheus authentication"
  type        = string
  default     = "node_exporter_password"
}

variable "slack_api_key" {
  description = "Your Slack API key to receive alerts"
  type        = string
  default     = ""
}