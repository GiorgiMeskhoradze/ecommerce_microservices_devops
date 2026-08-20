variable "repository_names" {
  type = list(string)
  default = [
    "product-service",
    "order-service",
    "inventory-service",
    "notification-service",
    "api-gateway",
    "discovery-server"
  ]
}