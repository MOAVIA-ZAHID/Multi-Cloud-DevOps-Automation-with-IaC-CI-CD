variable "location" {
  description = "Azure location"
  type        = string
  default     = "East US"
}

variable "project_name" {
  description = "Project name prefix for resources"
  type        = string
  default     = "multicloud-app"
}
