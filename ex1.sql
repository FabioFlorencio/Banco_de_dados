create database cadastro; /*Cria banco de dados*/
use cadastro;
create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas
(nome,nascimento,sexo,peso,altura,nacionalidade)
values
('Joao','1988-12-09','m','88.8','1.85','Brasil');

select * from pessoas;

/*
Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO)
Como está usando o auto_increment não é necessário passar o parametro "id"
Ex:
insert into pessoas
('id',nome,nascimento,sexo,peso,altura,nacionalidade)
values
('1','Fabio','1982-08-02','m','85.8','1.75','Brasil');
*/
