CREATE DATABASE nopreco_db;
USE nopreco_db;

CREATE TABLE users (
  id_user PRIMERY KEY AUTO_INCREMENT,
  nome VARCHAR(500) NOT NULL,
  email VARCHAR(500) NOT NULL,
  senha VARCHAR(500) NOT NULL,
  adicao INT NOT NULL DEFAULT 0,
  verficado INT NOT NULL DEFAULT 0,
);

CREATE TABLE mercados (
  id_mercado PRIMERY KEY AUTO_INCREMENT,
  nome VARCHAR(500) NOT NULL,
  classificacao INT NOT NULL DEFAULT 0,
  localizacao VARCHAR(500) NOT NULL,
  quantprodutos INT NOT NULL DEFAULT 0,
  verficado INT NOT NULL DEFAULT 0,
);

CREATE TABLE produtos (
  id_produto PRIMERY KEY AUTO_INCREMENT,
  nome VARCHAR(500) NOT NULL,
  preco DECIMAL(5,2) NOT NULL,
  marca VARCHAR(500) NOT NULL,
  id_mercado INT NOT NULL,
  id_user INT NOT NULL
);

ALTER TABLE produtos

ADD CONSTRAINT id_user

ADD CONSTRAINT id_mercado

FOREIGN KEY (id_user) REFERENCES users(id_user)
FOREIGN KEY (id_mercado) REFERENCES mercados(id_mercado)