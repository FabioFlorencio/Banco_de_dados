create database escola9;
use escola9;
create table if not exists cursos9(
idcurso int not null auto_increment,
nome varchar(20) not null unique,
descricao text(30),
carga int unsigned,
totaulas int,
ano year default '2021',
primary key(idcurso)
);
insert into cursos9 values
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
	Apaga o registro 1° registro com parametro 2018 e os 
    demais em sequência devido ao atributo limit
    
*/

truncate cursos9; # Apaga todos os registros da tabela

select * from cursos9;