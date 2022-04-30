/*/*

	DDL = Linguagem de defini��o   = Comando de defini��o da estrutura da base de dados
	S�o os comandos que interagem com os objetos do banco.
	
	DML = Linguagem de manipula��o = Comando de manipula��o de dados
	S�o os comandos que interagem com os dados dentro das tabelas.	
	
	DQL - Data Query Language - Linguagem de Consulta de dados.
	S�o os comandos de consulta.
	
	DCL - Data Control Language - Linguagem de Controle de Dados.
	S�o os comandos para controlar a parte de seguran�a do banco de dados.

	Comando CREATE, criando banco de dados (schema) e tabelas (table) / DDL - Curso de SQL - Aula 03
	
	(Linguagem de Defini��o de dados) permite ao usu�rio definir as novas tabelas e os elementos 
	que ser�o associados a elas.
	
	Comandos 
	
	o que � query pesquisar
	
	
	create database nome; -> cria o banco de dados
	
	observa��o = idade n�o se grava em banco de dados pois data de anivers�rio muda constatemente
	
	Tipos primitivos (n�mericos,data/tempo,lietral,espacial)
	
	Eles t�m subdivis�es e subtipos, cada um destes tipos tem precis�o diferente.A diferen�a desses tipos � a quantidade de
	bytes que ele vai utilizar para armazenar este lado.
	
	Exemplo o TinyInt por exemplo ele usa muito menos dados do que por exemplo o BigInt
	
	n�mericos (inteiro,real,logico)
	Subtipos inteiro (TinyInt,SmallInt,Int,MediumInt,BigInt)
	Subtipos real (Decimal, float, Double, Real)
	subtipos l�gico (bit, boolean)
	
	Data/tempo
	Subtipos (Date = data)
	Subtipos (DateTime = representa datas, horas e algumas informa��es mais)
	Subtipos (Time = somente hora)
	Subtipos (Year = somente ano)
	
	********************************************************************************************************
	
	Literais (Carcatere,Texto,Bin�rio,Cole��o)
	
	Subtipos Caractere (Char, varChar)
	
	Diferen�a em char e varChar.Char � fixo e varChar � variante.
	
	Char caso vc escolha que um nome(registro) vai ter 30 caracacter o banco vai deixar disponivel 30 espa�os
	para armezenar o registro mesmo que vc n�o utilize, dessa forma ocupa mais espa�o no disco.
	
	varChar � diferente, um nome(registro) vai ter at� 30 letras.
	Ex: Vc registra o nome Z�, dessa forma os restantes dos caracter n�o ser�o ocupados, ficaram disponiveis para uso
	
	Subtipo Texto (TinyText, Text, MediumText e LongText)
	
	Diferen�a entre char/varChar e Texto 
	
	char/varChar exemplo serve para guardar dados pequenos tipos nome,telefone
	texto � pra textos longos exemplo uma descri��o de uma pessoa ou informa��o
	
	Subtipo Bin�rio (TinyBlod, blod, MediumBlod, LongBlod)
	o tipo blob ele permite guardar qualquer coisa em bin�rio por exemplo, uma imagem, mas n�o � recomendado guardar 
	uma imagem dentro de um banco de dados 
	
	Subtipo cole��o (Enum, set)
	
	Enum e set s�o tipos que pode configurar quais s�o os valores permitidos e 
	na hora do cadastro ele s� vai aceitar esses valores
	
	********************************************************************************************************
	
	tipo Espaciais (Diometry,Point,Polygon, MultiPolygon)
	
	Ele permite guardar informa��o sobre volum�tricos
	
	********************************************************************************************************
	
	Exemplo de comandos em MySQL
	
	ctrl + enter = executa o c�digo
	use cadastro;
	create table pessoas(
	nome varchar(30),
	idade tinyint,
	sexo char(1),
	peso float,
	altura float,
	nacionalidade varchar(20)
	);
	
	describe pessoas; � um comando para ver a estrutura interna da tabela
	
	********************************************************************************************************
	
	Comando no MySql direto no cmd
	
	Obs. Para executar um comando o cursor tem que est� na linha do script depois apertar (ctrl+enter)
	
	create database nome; -> cria o banco de dados
	drop database nome;   -> Apaga o banco de dados
	drop table if exists nomeTabela; -> Apaga a tabela caso ela exista
	drop table nomeTabela;-> Apaga tabela
	show databases; mostra quais banco de dados foi criado
	use -> abre o banco de dados Ex: use cadastro
	status -> para saber qual banco de dados est� aberto
	show tables -> mostra a tabela existente
	describe nomeTabela-> mostra os atrubuitos da tabela -> Ex describe pessoas; (pessoas nome da tabela)
	desc     nomeTabela-> mostra os atrubuitos da tabela -> Ex describe pessoas; (pessoas nome da tabela)
	select * from pessoas;
	dump -> termo utilizado para backup
	
	
	alter table -> Altera tabela
	add column profissao varchar(10);
	
	alter table pessoas7
	drop column profissao; /*Apaga coluna
	
	
	
	
	*/