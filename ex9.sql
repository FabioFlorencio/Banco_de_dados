create database cadastro8;
use cadastro8;
create table pessoas8(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal (5,2),
altura decimal (3,2),
nacionlidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas8 values
(default,'Fabio','1982-08-28','m','87.9','1.75','Brasil'),
(default,'Jones','1986-09-07','m','98.1','1.99','EUA');

alter table pessoas8
add profissao varchar(10) after nome;

alter table pessoas8
modify column profissao varchar(20);

alter table pessoas8
change column profissao prof varchar(30);
/* passar o parametro antigo(profissao) e passar o novo(prof) parametro 
 para fazer alteração na tabela
 Change modifica o tipo, as constrains e o nome da coluna
 Curso MySQL #06 - Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)
 */

describe pessoas8;

