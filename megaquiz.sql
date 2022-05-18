DROP DATABASE megaquiz;
CREATE DATABASE megaquiz;
USE megaquiz;

CREATE TABLE usuario (
	 cd INT PRIMARY KEY AUTO_INCREMENT,
	 nome VARCHAR(45),
     email VARCHAR(45),
     senha VARCHAR(20)
);

CREATE TABLE categoria(
	cd INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

CREATE TABLE jogo(
	cd INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    id_usuario INT,
    id_categoria INT,
	FOREIGN KEY (id_usuario) REFERENCES usuario(cd),
    FOREIGN KEY (id_categoria) REFERENCES categoria(cd)
);

CREATE TABLE pergunta(
	cd INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    id_jogo INT,
    FOREIGN KEY (id_jogo) REFERENCES jogo(cd)
);

CREATE TABLE alternativa(
	cd INT PRIMARY KEY AUTO_INCREMENT,
    texto VARCHAR(200),
    resposta BOOL,
    id_pergunta INT,
    FOREIGN KEY (id_pergunta) REFERENCES pergunta(cd)
);

CREATE TABLE ponto(
	id_usuario INT,
    id_jogo INT,
	FOREIGN KEY (id_usuario) REFERENCES usuario(cd),
    FOREIGN KEY (id_jogo) REFERENCES jogo(cd),
    total INT
);
