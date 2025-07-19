variable "user_service_image" {
  description = "Docker image for User Service"
  default     = "user-service:latest"
}

variable "order_service_image" {
  description = "Docker image for Order Service"
  default     = "order-service:latest"
}

variable "user_service_port" {
  description = "Port for User Service"
  default     = 8081
}

variable "order_service_port" {
  description = "Port for Order Service"
  default     = 8082
}