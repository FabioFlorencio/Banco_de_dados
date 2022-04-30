create database cadastro4;
use cadastro4;
create table pessoas4(
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,3),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);
insert into pessoas4 values
(default,'Fabio','1982-08-28','m','85.8','1.75','Brasil'),
(default,'Jose','1977-09-11','m','90.7','1.80','Portugal'),
(default,'Maria','1969-07-02','f','62.5','1.60','Suecia'),
(default,'Carolina','1955-05-1','f','59.8','1.77','Peru');

insert into pessoas4 values
(default,'Cleones','1965-09-02','m','71.4','1.80',default);

select * from pessoas4;
describe pessoas4;

/*
	Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO)
	Dessa forma passa varios dados de uma unica vez
*/