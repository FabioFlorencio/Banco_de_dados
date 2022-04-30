/*
	Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO) - Curso em video
	
	Comando (INSERT INTO)
	
	insert into pessoas -> insere esses valores na tabela abaixo	
	(nome,nascimento,sexo,peso,altura,nacionalidade)
	values
	('Godofredo','1984-01-02','M','78.5','1.83','Brasil');
	
	Comando (INSERT INTO)
	
	Observação 
	
	Se a ordem da tabela for igual aos dados inseridos basta omitir as informações
	Ex:
	insert into pessoas values
	('Godofredo','1984-01-02','m','78.5','1.83','Brasil');
	
	
	*********************************************************************************************
	
	Comando SELECT
	
	select * from pessoas;
	
	Esse comando seleciona todos os campos que estão inseridos na tabela
	
	alter table pessoas add id INT NOT NULL PRIMARY KEY auto_increment;
	
	*********************************************************************************************
	
	Chave primaria
	
	a chave primaria tem que ser colocada antes senão o autoincremento não
	funciona
	
	*********************************************************************************************
	
	Tipos de dump
	
	Dump structure and data -> Faz a copia da estrutura do banco de dados e os dados cadastrado
	Dump data -> Somente os dados cadastrado
	Dumo struture -> Somente a estrutura
	
*/