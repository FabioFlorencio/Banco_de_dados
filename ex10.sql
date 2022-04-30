create database cadastro9;
use cadastro9;
create table pessoas9(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas9 values
(default,'Robert','1999-01-03','m','89.6','1.85',default),
(default,'Neuza','1997-04-09','f','49.6','1.65',default);

alter table pessoas9
rename to funcionario;/*Muda o nome da tabela*/

select * from pessoas9;