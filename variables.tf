variable "location" {
  default = "northeurope"
  type = string
}

variable "environment" {
  type = string
}

variable "subscription_id" {
  type = string
  sensitive = true
}

variable "tenant_id" {
  type = string
  sensitive = true
}