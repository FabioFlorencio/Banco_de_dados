create database escola1;
use escola1;
create table if not exists cursos1(
nome varchar(30)not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2021'
);

alter table cursos1
add column idcurso int first;

alter table cursos1
add primary key(idcurso);

alter table cursos1
modify column idcurso int auto_increment;

insert into cursos1 values
(default,'Java iniciante','Excelente curso','180','20','2022'),
(default,' pyton iniciante','bom curso','120','15',default);

insert into cursos1 values
(default,'java iniciante','razoavel curso','100','10',default);
/*Não permiti colocar o mesmo nome mesmo sendo mauisculo ou minisculo */

insert into cursos1 values
(default,'d','mais o menos','100','10',default);

drop table if exists cursos2;
/*Vai apagar a tabela caso ela exista*/ 

select * from cursos1;

