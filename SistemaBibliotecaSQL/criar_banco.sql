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


create table emprestimos (
	id int primary key auto_increment,
	usuario_id int not null,
	livro_id int not null,
	data_emprestimo date,
	
	foreign key (usuario_id) references usuarios(id),
	foreign key (livro_id) references livros(id)
)

