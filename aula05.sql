CREATE 	DATABASE bdaula05;

USE bdaula05;

CREATE TABLE produto(
	id_produto INT PRIMARY KEY,
    custo FLOAT,
    descricao TEXT
);
CREATE TABLE servico(
	id_servico INT PRIMARY KEY,
    descricao TEXT,
    tempo_realiza VARCHAR(30),
    custo FLOAT     
);
CREATE TABLE cliente(
	cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR (100)NOT NULL   
);
CREATE TABLE veiculo(
	id_renavan VARCHAR(11) PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL,
    chassi VARCHAR(17) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    cor VARCHAR (20) NOT NULL,
    FOREIGN KEY(cpf) REFERENCES cliente (cpf)
);
CREATE TABLE relato_cliente(
	id_relato INT PRIMARY KEY,
    id_renavan VARCHAR(11),
    problema TEXT,
    data_relatorio DATETIME,
    FOREIGN KEY(id_renavan) REFERENCES veiculo (id_renavan)
);
CREATE TABLE orcamento(
	id_orcamento INT PRIMARY KEY, 
    id_renavan VARCHAR(11),
    data_orcamento DATETIME NOT NULL,
    previsao_entrega DATETIME NOT NULL,
    situacao VARCHAR(40),        
    valor FLOAT,
    forma_pagamento VARCHAR(20),
    FOREIGN KEY (id_renavan) REFERENCES veiculo (id_renavan)
);
CREATE TABLE item_servico(
	id_servico INT,
    id_orcamento INT,
	situacao VARCHAR(40),
    custo float,    
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico),	
    FOREIGN KEY (id_orcamento) REFERENCES orcamento (id_orcamento) 
);
CREATE TABLE item_produto(
	id_produto INT,
    id_orcamento INT,    
	quantidade INT,
    situacao VARCHAR(40),
	custo FLOAT NOT NULL,  
    FOREIGN KEY (id_produto) REFERENCES produto (id_produto),	
    FOREIGN KEY (id_orcamento) REFERENCES orcamento (id_orcamento)    
);

ALTER TABLE cliente
CHANGE COLUMN nome nome_completo VARCHAR(50); 

ALTER TABLE veiculo
ADD COLUMN ano YEAR(4);

DROP TABLE produto,servico,cliente,veiculo,relato_cliente,orcamento,item_servico,item_produto;











