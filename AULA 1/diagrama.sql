USE biblioteca_pessoal_1S2026;

create TABLE Usuario (
	id_usuario INT auto_increment
    nome VARCHAR(255) NOT NULL
    email VARCHAR(255) NOT NULL UNIQUE
    data_cadastro: date
);

create TABLE Livro (
	id_livro INT auto_increment
    id_usuario INT auto_increment
    titulo VARCHAR(255) NOT NULL
    descricao VARCHAR(255) NOT NULL
    ano_publicacao: year
    
);

