variable "project" {
  description = "GCP project id"
  type        = string
  default     = "my-gcp-project"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "project_name" {
  description = "Project name prefix for resources"
  type        = string
  default     = "multicloud-app"
}
