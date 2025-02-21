# 📚 Projeto Lista de Livros - Docker + Node.js + MySQL + PHP

Uma aplicação que exibe uma lista de livros cadastrados em um banco de dados **MySQL**, utilizando uma **API em Node.js** e um **frontend em PHP** para exibição, onde cada uma dessas tecnologias foram configuradas em docker.

---

## 🚀 Tecnologias Utilizadas

- **Node.js** (API)
- **MySQL** (Banco de Dados)
- **PHP + Apache** (Interface Web)
- **Docker** e **Docker Compose**

---

## 📁 Estrutura do Projeto

```plaintext
desafio01DATAPREV/
├── api/
│   ├── index.js
│   ├── package.json
│   └── db/
│       └── script.sql
├── website/
│   └── index.php
├── docker-compose.yml
└── README.md
```

---

## 🛠 Configuração do Ambiente

### 1️⃣ Pré-requisitos

Antes de rodar o projeto, você precisa ter instalado:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### 2️⃣ Instalação

1. Clone o repositório:
   ```sh
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
   ```

2. Execute o projeto:
   ```sh
   docker-compose up -d
   ```

3. Acesse a API:
   ```plaintext
   http://localhost:9001/
   ```

4. Acesse o frontend em PHP:
   ```plaintext
   http://localhost:8888/
   ```

---

## 📦 Configuração dos Serviços

### MySQL

- **Host:** `db`
- **Usuário:** `root`
- **Senha:** `desafio01`
- **Banco de Dados:** `listalivros`

### Node.js

- **Porta:** `9001`
- **Framework:** **Express**

### PHP + Apache

- **Porta:** `8888`

---

## 🔗 Endpoints da API

| Método | Endpoint | Descrição                  |
|--------|----------|----------------------------|
| GET    | `/`      | Testa se a API está ativa. |
| GET    | `/livros`| Retorna a lista de livros. |

---

## 📝 Scripts SQL

```sql
CREATE DATABASE IF NOT EXISTS listalivros;
USE listalivros;

CREATE TABLE IF NOT EXISTS livros (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    preco DECIMAL(10,2)
);

INSERT INTO livros VALUE(0,"A Vegetariana","Han Kang",70);

INSERT INTO livros VALUE(0,"1984","George Orwell",45);

INSERT INTO livros VALUE(0,"O Senhor dos Aneis","J.R.R. Tolkien",90);

INSERT INTO livros VALUE(0,"O Pequeno Principe","Antoine de Saint-Exupery",35);

INSERT INTO livros VALUE(0,"O ato criativo: uma forma de ser","Rick Rubin",30);

INSERT INTO livros VALUE(0,"O Codigo Da Vinci","Dan Brown",50);

INSERT INTO livros VALUE(0,"Harry Potter e a Pedra Filosofal","J.K. Rowling",40);

INSERT INTO livros VALUE(0,"Habitos Atomicos","James Clear",45);

INSERT INTO livros VALUE(0,"Memorias Postumas de Bras Cubas","Machado de Assis",25);

INSERT INTO livros VALUE(0,"A Revolucao dos Bichos","George Orwell",40);
```


---

## 🏗️ Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para abrir um PR com sugestões ou melhorias.

---
