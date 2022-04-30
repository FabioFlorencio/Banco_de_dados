create database escola6;
use escola6;
create table if not exists cursos6(
idcurso int not null auto_increment,
nome varchar(20) not null unique,
descricao text(30),
carga int unsigned,
totaulas int,
ano year default '2021',
primary key(idcurso)
);
insert into cursos6 values
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

delete from cursos6 # Apaga uma linha do registro
where idcurso = "8";

select * from cursos6;

/* 
	O comando ctrl+shift+enter ele executa todas as instruções em cascata
    de cima para baixo
*/