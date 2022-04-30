create database escola4;
use escola4;
create table if not exists cursos4(
idcurso int not null auto_increment,
nome varchar(20) not null unique,
descricao text(30),
carga int unsigned,
totaulas int,
ano year default '2021',
primary key(idcurso)
);
insert into cursos4 values
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
	Curso MySQL #07 - Manipulando Linhas (UPDATE, DELETE e TRUNCATE)
    UPDATE -> Ele atualiza é mantém a linha mesmo que vc deixe o registro vazio
    nesse caso é necessário usar o DELETE 
*/
update cursos4 # Exemplo de manipulação de linha
set nome = 'HTML5'
where idcurso ='1';

update cursos4
set nome = 'PHP', ano = '2015' # Exemplo de manipulação de 2 dados da tabela 
where idcurso = '4';

update cursos4 
set nome = 'Java' , ano = '2015' , carga = '40'
where idcurso = '5'
limit 1; # limit serve para limitar a mudança de dado somente de uma linha

select * from cursos4;