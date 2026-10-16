create database biblioteca;
use biblioteca;

create table livros (
	id int primary key auto_increment,
	titulo varchar(100) not null,
	autor varchar(100) not null,
	categoria varchar(50),
	ano_publicacao int
);

create table usuarios(
	id int primary key auto_increment,
	nome varchar(100) not null,
	email varchar(100) unique
);


CREATE TABLE emprestimos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    livro_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,

    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);