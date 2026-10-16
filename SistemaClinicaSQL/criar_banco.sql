create database clinica;
use clinica;

create table pacientes(
	id int primary key auto_increment,
	nome varchar(100) not null,
	cpf varchar(14) unique not null,
	telefone varchar(20) not null
);


create table medicos(
	id int auto_increment primary key,
	nome varchar(100) not null,
	especialidade varchar(50)
);

create table consultas(
	id int auto_increment primary key,
	paciente_id int,
	medico_id int,
	data_consulta date,
	status_consulta varchar(20),
	motivo_consulta VARCHAR(100),
	
	foreign key(paciente_id) references pacientes(id),
	foreign key(medico_id) references medicos(id)
);