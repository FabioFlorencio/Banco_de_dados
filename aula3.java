/*/*

	DDL = Linguagem de definição   = Comando de definição da estrutura da base de dados
	São os comandos que interagem com os objetos do banco.
	
	DML = Linguagem de manipulação = Comando de manipulação de dados
	São os comandos que interagem com os dados dentro das tabelas.	
	
	DQL - Data Query Language - Linguagem de Consulta de dados.
	São os comandos de consulta.
	
	DCL - Data Control Language - Linguagem de Controle de Dados.
	São os comandos para controlar a parte de segurança do banco de dados.

	Comando CREATE, criando banco de dados (schema) e tabelas (table) / DDL - Curso de SQL - Aula 03
	
	(Linguagem de Definição de dados) permite ao usuário definir as novas tabelas e os elementos 
	que serão associados a elas.
	
	Comandos 
	
	o que é query pesquisar
	
	
	create database nome; -> cria o banco de dados
	
	observação = idade não se grava em banco de dados pois data de aniversário muda constatemente
	
	Tipos primitivos (númericos,data/tempo,lietral,espacial)
	
	Eles têm subdivisões e subtipos, cada um destes tipos tem precisão diferente.A diferença desses tipos é a quantidade de
	bytes que ele vai utilizar para armazenar este lado.
	
	Exemplo o TinyInt por exemplo ele usa muito menos dados do que por exemplo o BigInt
	
	númericos (inteiro,real,logico)
	Subtipos inteiro (TinyInt,SmallInt,Int,MediumInt,BigInt)
	Subtipos real (Decimal, float, Double, Real)
	subtipos lógico (bit, boolean)
	
	Data/tempo
	Subtipos (Date = data)
	Subtipos (DateTime = representa datas, horas e algumas informações mais)
	Subtipos (Time = somente hora)
	Subtipos (Year = somente ano)
	
	********************************************************************************************************
	
	Literais (Carcatere,Texto,Binário,Coleção)
	
	Subtipos Caractere (Char, varChar)
	
	Diferença em char e varChar.Char é fixo e varChar é variante.
	
	Char caso vc escolha que um nome(registro) vai ter 30 caracacter o banco vai deixar disponivel 30 espaços
	para armezenar o registro mesmo que vc não utilize, dessa forma ocupa mais espaço no disco.
	
	varChar é diferente, um nome(registro) vai ter até 30 letras.
	Ex: Vc registra o nome Zé, dessa forma os restantes dos caracter não serão ocupados, ficaram disponiveis para uso
	
	Subtipo Texto (TinyText, Text, MediumText e LongText)
	
	Diferença entre char/varChar e Texto 
	
	char/varChar exemplo serve para guardar dados pequenos tipos nome,telefone
	texto é pra textos longos exemplo uma descrição de uma pessoa ou informação
	
	Subtipo Binário (TinyBlod, blod, MediumBlod, LongBlod)
	o tipo blob ele permite guardar qualquer coisa em binário por exemplo, uma imagem, mas não é recomendado guardar 
	uma imagem dentro de um banco de dados 
	
	Subtipo coleção (Enum, set)
	
	Enum e set são tipos que pode configurar quais são os valores permitidos e 
	na hora do cadastro ele só vai aceitar esses valores
	
	********************************************************************************************************
	
	tipo Espaciais (Diometry,Point,Polygon, MultiPolygon)
	
	Ele permite guardar informação sobre volumétricos
	
	********************************************************************************************************
	
	Exemplo de comandos em MySQL
	
	ctrl + enter = executa o código
	use cadastro;
	create table pessoas(
	nome varchar(30),
	idade tinyint,
	sexo char(1),
	peso float,
	altura float,
	nacionalidade varchar(20)
	);
	
	describe pessoas; é um comando para ver a estrutura interna da tabela
	
	********************************************************************************************************
	
	Comando no MySql direto no cmd
	
	Obs. Para executar um comando o cursor tem que está na linha do script depois apertar (ctrl+enter)
	
	create database nome; -> cria o banco de dados
	drop database nome;   -> Apaga o banco de dados
	drop table if exists nomeTabela; -> Apaga a tabela caso ela exista
	drop table nomeTabela;-> Apaga tabela
	show databases; mostra quais banco de dados foi criado
	use -> abre o banco de dados Ex: use cadastro
	status -> para saber qual banco de dados está aberto
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