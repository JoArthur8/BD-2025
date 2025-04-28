CREATE DATABASE etecmcm2;

USE etecmcm2;

CREATE TABLE Produto (
id_prod INT PRIMARY KEY AUTO_INCREMENT,
nome_prod VARCHAR(255),
quantidade INT,
preco DECIMAL(10,2),
marca VARCHAR(255),
id_cat INT
);

CREATE TABLE Categoria (
id_cat INT PRIMARY KEY AUTO_INCREMENT,
nome_cat VARCHAR(255)
);

ALTER TABLE Produto ADD FOREIGN KEY(id_cat) REFERENCES Categoria (id_cat);