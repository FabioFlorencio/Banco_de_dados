create database escola ;
use escola;
/*
create table if not exists cursos
So vai criar a tabela cursos caso ela não exista.Fazer teste abaixo
*/
create table if not exists cursos(
nome varchar(30) not null unique, /*unique ->Não permite repertir dois cursos com o mesmo nome*/
descricao text,
carga int unsigned, /*unsigned -> não permiti colocar valor negativo (-10)*/
totaulas int,
ano year default '2021'
);


select * from cursos;

