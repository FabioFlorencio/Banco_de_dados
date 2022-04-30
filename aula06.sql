CREATE DATABASE bdgravadora;

USE bdgravadora;

CREATE TABLE gravadora(
	grav_cod INT PRIMARY KEY,
    grav_nome VARCHAR(100) NOT NULL,
    grav_end varchar(100) NOT NULL
);
CREATE TABLE musica(
	mus_cod INT PRIMARY KEY,
    mus_nome VARCHAR(100) NOT NULL,
    mus_duracao TIME NOT NULL,
    mus_faixa INT UNSIGNED NOT NULL
);
CREATE TABLE autor(
	aut_cod INT PRIMARY KEY,
    aut_nome VARCHAR(100) NOT NULL
);
CREATE TABLE album(
	cod_album INT PRIMARY KEY,
    grav_cod INT NOT NULL,
    cd_nome VARCHAR(100) NOT NULL,
    cd_valor FLOAT UNSIGNED NOT NULL,
    cd_data_lancamento DATE NOT NULL,   
    FOREIGN KEY(grav_cod) REFERENCES gravadora (grav_cod)
);
CREATE TABLE item_CD(
	mus_cod	INT,
    cod_album INT,
    FOREIGN KEY (mus_cod) REFERENCES musica(mus_cod),
    FOREIGN KEY (cod_album) REFERENCES album(cod_album)
);
CREATE TABLE musica_autor(
	mus_cod INT,
    aut_cod INT,
    FOREIGN KEY (mus_cod) REFERENCES musica (mus_cod),
    FOREIGN KEY (aut_cod) REFERENCES autor (aut_cod)
);
INSERT INTO gravadora VALUES
	('1','Sony BMG','Cavaquinho'),
	('2','Sony Music','Viola'),
	('3','MCA','Londrino'),
	('4','Geffen Records','Grunge'),
	('5','Warner Music Brasil','Pisadinha'),
	('6','BMG Brasil','Rio'),
	('7','Universal Music','Vaneirão');	
INSERT INTO autor VALUES
	('1','Stevie Ray Vaughan'),
	('2','Chico Scinece e Nação Zumbi'),
	('3','Jimi Hendrix'),
	('4','Soundgarden'),
	('5','Dream Theater'),
	('6','Engenheiros do Hawai'),
	('7','Metallica');
INSERT INTO musica VALUES
	('1','Pride and Joy','3:41',2),
	('2','Macô','3:44',5),
	('3','Castles Made of sand','2:46',9),
	('4','Pretty Noose','4:12',1),
	('5','The Dance of Eternity','10:00',9),
	('6','A promessa','3:35',5),
	('7','The day that never comes','8:00',4);    
INSERT INTO album VALUES
	('1','1','Texas Flood',55.7,'1983-06-15'),
	('2','2','Afrociberdelia',43.8,'1996-05-15'),
	('3','3','Axis:bold as love',50.7,'1967-12-01'),
	('4','4','Down on the upside',32.5,'1996-05-21'),
	('5','5','METROPLOIS PT2: SCENES FROM A MEMORY',44.8,'1999-10-26'),
	('6','6','Simples de Coração',35.8,'1995-09-13'),
	('7','7','Death Magnetic',41.5,'2008-9-12');    
INSERT INTO item_cd VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7);
INSERT INTO musica_autor VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7);    
    




