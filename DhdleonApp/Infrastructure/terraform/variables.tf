variable "location" {
  description = "La ubicación donde se creará el clúster de Kubernetes."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "El nombre del grupo de recursos donde se creará el clúster de Kubernetes."
  type        = string
  default     = "AZRG-SAMTEL-US-DEV"
}

variable "tenant_id" {
  description = "El ID del inquilino de Azure."
  type        = string
}

variable "subscription_id" {
  description = "El ID de la suscripción de Azure."
  type        = string
}

variable "client_id" {
  description = "El ID del cliente de Azure."
  type        = string
}

variable "client_secret" {
  description = "El secreto del cliente de Azure."
  type        = string
}

variable "backend_image" {
  description = "La imagen del backend que se utilizará para el clúster de Kubernetes."
  type        = string
  default     = "brandon2399/repo_samples_dockerhub_backend:v2"
}

variable "frontend_image" {
  description = "La imagen del frontend que se utilizará para el clúster de Kubernetes."
  type        = string
  default     = "brandon2399/repo_samples_dockerhub_frontend:v4"
}