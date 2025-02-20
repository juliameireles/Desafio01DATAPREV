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

INSERT INTO livros VALUE(0,"O ato criativo: uma forma de ser","Rick Rubin",30);