terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "user_service_image" {
  name = var.user_service_image
}

resource "docker_image" "order_service_image" {
  name = var.order_service_image
}

resource "docker_container" "user_service_container" {
  image = docker_image.user_service_image.name
  name  = "user-service-container"
  ports {
    internal = 8081
    external = var.user_service_port
  }
}

resource "docker_container" "order_service_container" {
  image = docker_image.order_service_image.name
  name  = "order-service-container"
  ports {
    internal = 8082
    external = var.order_service_port
  }
}

output "user_service_container_id" {
  value = docker_container.user_service_container.id
}

output "order_service_container_id" {
  value = docker_container.order_service_container.id
}