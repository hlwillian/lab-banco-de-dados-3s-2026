USE biblioteca_pessoaL_1S2026;

CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Editora (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    id_categoria INT NOT NULL,
    id_editora INT NOT NULL,
    id_autor INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria) 
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_editora) REFERENCES Editora(id_editora) 
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor) 
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);