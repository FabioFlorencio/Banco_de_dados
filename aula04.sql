create database bdaula04;

use bdaula04;

CREATE TABLE aluno(
	id_ra INT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    dt_nasc VARCHAR(12),
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(15)
);

create table disciplinas(
	id_disciplina INT PRIMARY KEY,
    nome_professor VARCHAR(100) NOT NULL,
	FOREIGN KEY(id_ra) REFERENCES aluno(id_ra)	
);


