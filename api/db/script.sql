CREATE DATABASE IF NOT EXISTS 
  listalivros;
USE listalivros;

CREATE TABLE IF NOT EXISTS livros (
    id INT(11) AUTO_INCREMENT,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    preco DECIMAL(10,2),
    PRIMARY KEY (id)

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