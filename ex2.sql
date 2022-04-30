create database cadastro1;
use cadastro1;
create table pessoas1(
id int not null,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas1
(id,nome,nascimento,sexo,peso,altura,nacionalidade)
values
('1','Rogeria','1966-08-3','f','55.7','1.68','Portugal');
/*
	Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO)
	Dessa forma é necessário informar o parametro "id"
*/
