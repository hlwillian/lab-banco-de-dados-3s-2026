DROP DATABASE biblioteca_pessoal_1s2026;
CREATE DATABASE biblioteca_pessoal_1s2026;
CREATE TABLE usuario(
id_usario INT AUTO_INCREMENT PRIMARY_KEY,
nome VARCHAR(255) NOT NULL,
email VARCHAR(128) NOT NULL UNIQUE,
data_cadastro DATE DEFAULT(current_date) NOT NULL
);