terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

# Imagen y contenedor de Nginx
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  name  = "nginx-container"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

# 📌 NUEVO: Imagen y contenedor del microservicio usando el REGISTRO LOCAL
resource "docker_image" "microservice" {
  name = "localhost:5000/devops-challenge:latest"
}

resource "docker_container" "microservice" {
  name  = "microservice-container"
  image = docker_image.microservice.image_id

  ports {
    internal = 3000
    external = 4000
  }
}
