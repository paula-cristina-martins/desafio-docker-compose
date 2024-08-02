# 📋 Desafio - Docker Compose

Este é o repositório do back-end desenvolvido em *Nest.js* para trabalhar com *Dockerfile* e *docker-compose.yaml*.



## 🚀 Começando

Essas instruções permitirão que você obtenha uma cópia do projeto operacional em sua máquina local para fins de desenvolvimento e testes.

### 📋 Pré-requisitos

O que você precisa para instalar o software e como instalá-lo?

### 🔧 Instalação

Antes de começar, você precisará ter instalado em sua máquina as seguintes ferramentas:

- Node.js
- NPM
- Docker Desktop

Após isso rode o comando:

- `yarn install`

Em seguida crie a network (deve ser a mesma do banco de dados):
- `docker network create docker-compose-network --driver bridge`

## 📦 Desenvolvimento

Descreva as etapas para executar o projeto:

1. Para rodar o projeto `yarn start dev` - para validar o projeto local.
2. Em seguida rode `docker-compose up --build -d`, para execução.
3. Para acompanhamento da execução, pode ser acompanhado por `docker-compose logs`.



---

⌨️ com ❤️ por Paula Martins 😊👩
