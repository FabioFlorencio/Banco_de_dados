create database escola2;
use escola2;
create table cursos2(
idcurso int not null,
nome varchar(20) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2021'
);
insert into cursos2 values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4 ','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução á Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças rítimas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');

/*
	Pq não segue a sequência númerica a coluna idcurso ?
    Mas se colocar primary key coloca em ordem númerica
*/

select * from cursos2;