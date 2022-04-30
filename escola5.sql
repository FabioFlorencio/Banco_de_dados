create database escola5;
use escola5;
create table if not exists cursos5(
idcurso int not null auto_increment,
nome varchar(20) not null unique,
descricao text(30),
carga int unsigned,
totaulas int,
ano year default '2021',
primary key(idcurso)
);
insert into cursos5 values
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

update cursos5
set ano = '2018', carga = '0'
where ano ='2050';
# limit 1  -> dessa forma vc limita a mudança de mais linhas;
/*
	Exemplo acima é uma forma de mudar varias linhas ao mesmo tempo não utilizando a 
    primary key como referência e sim o atributo ano = 2018
    Observação -> o sistema impede essa mudança então é necessário fazer uma alteração
    na aba edit conforme a explicação do Guanabara
    Curso MySQL #07 - Manipulando Linhas (UPDATE, DELETE e TRUNCATE)
*/

select * from cursos5;