# Secure Microservices with Java 21 and Spring Boot 3.5 OAUTH 2.O PROTOCOL

A microservice architecture with secure APIs using JWT and HTTPS.

## Prerequisites
- Java 21
- Maven
- Docker Desktop
- Terraform
- Ansible
- Python
- OpenSSL

## Setup
1. Generate certificates: `cd certs && openssl ...`
2. Build services: `cd user-service && mvn clean package`, `cd order-service && mvn clean package`
3. Build Docker images: `docker build -t user-service:latest user-service`, `docker build -t order-service:latest order-service`
4. Apply Terraform: `cd terraform && terraform init && terraform apply`
5. Run Ansible: `cd ansible && ansible-playbook -i inventory playbook.yml`

## Test
- Register: `curl --insecure -X POST https://localhost:8081/api/users/register ...`
- Login: `curl --insecure -X POST https://localhost:8081/api/users/login ...`
- Orders: `curl --insecure -X POST https://localhost:8082/api/orders ...`

## Cleanup
- Terraform: `cd terraform && terraform destroy`
- Ansible: `docker stop user-service-container-ansible order-service-container-ansible`
