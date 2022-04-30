create database cadastro5;
use cadastro5;
create table pessoas5(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas5 values
(default,'Fabio','1982-08-28','m','85.8','1.75',default),
(default,'Joana','1977-09-01','f','44.3','1.65',default);

alter table pessoas5 /* altera tabela e coloca profissao na ultima coluna */
add column profissao varchar(10);

alter table pessoas5
drop column profissao; /* remove coluna*/

select * from pessoas5;





