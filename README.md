#  DevOps Challenge: Microservicio Docker + Terraform + Pipeline 

Este repositorio contiene una solución para el **DevOps Challenge**, en la que se implementa un microservicio en **Docker**, se despliega con **Terraform** y se automatiza mediante un **Pipeline de CI/CD**.

##  1. Requisitos Previos

Antes de ejecutar este proyecto, asegúrate de tener instaladas las siguientes herramientas:

- [Docker](https://www.docker.com/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads) (opcional si usas Docker)
- [Git](https://git-scm.com/)
- Cuenta en **Docker Hub** o **Amazon ECR** para almacenar imágenes

---

##  2. Ejecución del Microservicio Localmente

Para correr el microservicio en tu máquina con **Docker**, ejecuta:

```sh
docker build -t devops-challenge .
docker run -p 4000:3000 devops-challenge
