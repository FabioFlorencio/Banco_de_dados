create database cadastro3;
use cadastro3;
create table pessoas3(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas3
(id,nome,nascimento,sexo,peso,altura,nacionalidade)
values
(default,'Rogeria','1966-08-03','f','55.7','1.68','Chile');
/*
	Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO)
	Dessa forma é necessário informar o parametro "id"
    Não funciona
*/

select * from pessoas3;