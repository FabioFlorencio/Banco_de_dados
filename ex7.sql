create database cadastro6;
use cadastro6;
create table pessoas6(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,3),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas6 values
(default,'Fabio','1982-08-28','m','85.8','1.75',default),
(default,'Guiherme','1977-11-02','m','77.5','1.65','Portugal'),
(default,'Mara','1980-12-02','f','65.4','1.55','Suecia');

select * from pessoas6;

alter table pessoas6
add column profissao varchar(10) after nome;
/*Adiciona a coluna profissao depois do nome*/

alter table pessoas6
add column codigo int first;
/*Adiciona a coluna codigo no inicio da tabela / column é opcional nesse exemplo*/


