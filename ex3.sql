create database cadastro2;
use cadastro2;
create table pessoas2(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2), 
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas2 values
(default,'Barao','1969-10-11','m','90.2','1.81',default);
/*
	Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO)
	Dessa forma basta passar os parametros conforme a tabela e colocar 
    default/padrão que vai fazer auto_increment 
*/
