create database cadastro7;
use cadastro7;
create table pessoas7(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);

insert into pessoas7 values
(default,'Rogerio','1943-12-09','m','89.7','1.92','Brasil'),
(default,'Marisa','1988-10-03','f','54.8','1.56','Japao');

alter table pessoas7
add profissao varchar(10) after nome;
/*Adiciona a coluna profissao depois do nome*/

alter table pessoas7
modify column profissao varchar(20); 

/* modify column profissao varchar(20) not null;  -> Não funciona possa ser a verão MySql
	modify permite somente mudar o tipo primitivo e as "constraits" 
    não pernite mudar o nome da coluna
    Curso MySQL #06 - Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)
*/

alter table pessoas7
drop column profissao; /*Apaga coluna*/

select * from pessoas7;
describe pessoas7;