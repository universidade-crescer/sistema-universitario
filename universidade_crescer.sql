CREATE DATABASE universidade_crescer;


CREATE TABLE PROFESSOR (ID_PROFESSOR SERIAL CONSTRAINT PK_ID_PROFESSOR PRIMARY KEY NOT NULL,
NOME VARCHAR (50) NOT NULL,
EMAIL VARCHAR (50) NOT NULL UNIQUE
);

SELECT * FROM PROFESSOR;


CREATE TABLE ALUNO (ID_ALUNO SERIAL CONSTRAINT PK_ID_ALUNO PRIMARY KEY NOT NULL,
NOME VARCHAR (50) NOT NULL,
CPF VARCHAR(11) NOT NULL UNIQUE,
EMAIL VARCHAR(50) NOT NULL UNIQUE,
RUA VARCHAR(50) NOT NULL,
NUM VARCHAR(5) NOT NULL,
BAIRRO VARCHAR(20) NOT NULL,
CIDADE VARCHAR(20) NOT NULL,
CEP VARCHAR(50) NOT NULL
);

SELECT * FROM ALUNO;


CREATE TABLE DISCIPLINA (ID_DISCIPLINA SERIAL CONSTRAINT PK_ID_DISCIPLINA PRIMARY KEY NOT NULL,
NOME VARCHAR(20) NOT NULL,
PROFESSOR INT NOT NULL,
CONSTRAINT FK_ID_PROFESSOR FOREIGN KEY (PROFESSOR) REFERENCES PROFESSOR(ID_PROFESSOR));

SELECT * FROM DISCIPLINA;


CREATE TABLE CURSO (ID_CURSO SERIAL CONSTRAINT PK_ID_CURSO PRIMARY KEY NOT NULL,
TURNO VARCHAR (10) NOT NULL,
ALUNO INT NOT NULL,
CONSTRAINT FK_ID_ALUNO FOREIGN KEY (ALUNO) REFERENCES ALUNO(ID_ALUNO));

SELECT * FROM CURSO;

CREATE TABLE TURMA (ID_TURMA SERIAL CONSTRAINT PK_ID_TURMA PRIMARY KEY NOT NULL,
ALUNO INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_ALUNO FOREIGN KEY (ALUNO) REFERENCES ALUNO(ID_ALUNO),
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

SELECT * FROM TURMA;

CREATE TABLE GRADUACAO
(ID_GRADUACAO SERIAL CONSTRAINT PK_ID_GRADUACAO PRIMARY KEY NOT NULL,
NOME VARCHAR(20) NOT NULL,
CARGA_HORARIA INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

SELECT * FROM GRADUACAO;

CREATE TABLE ESPECIALIZACAO (ID_ESPECIALIZACAO SERIAL CONSTRAINT PK_ID_ESPECIALIZACAO PRIMARY KEY NOT NULL, 
NOME VARCHAR (20) NOT NULL,
CARGA_HORARIA INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

SELECT * FROM ESPECIALIZACAO;

CREATE TABLE MESTRADO (ID_MESTRADO SERIAL CONSTRAINT PK_ID_MESTRADO PRIMARY KEY NOT NULL,
NOME VARCHAR(20) NOT NULL,
CARGA_HORARIA INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

SELECT * FROM MESTRADO;

CREATE TABLE PROF_DISCIPLINA (ID_PROF_DISCIPLINA SERIAL CONSTRAINT PK_ID_PROF_DISCIPLINA PRIMARY KEY NOT NULL,
PROFESSOR INT NOT NULL,
DISCIPLINA INT NOT NULL,
CONSTRAINT FK_ID_PROFESSOR FOREIGN KEY (PROFESSOR) REFERENCES PROFESSOR(ID_PROFESSOR),
CONSTRAINT FK_ID_DISCIPLINA FOREIGN KEY (DISCIPLINA) REFERENCES DISCIPLINA(ID_DISCIPLINA)
);

SELECT * FROM PROF_DISCIPLINA;

CREATE TABLE DOUTORADO
(ID_DOUTORADO SERIAL CONSTRAINT PK_ID_DOUTORADO PRIMARY KEY NOT NULL,
NOME VARCHAR(20) NOT NULL,
CARGA_HORARIA INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

SELECT * FROM DOUTORADO;

CREATE TABLE CAMPUS (ID_CAMPUS SERIAL CONSTRAINT PK_ID_CAMPUS PRIMARY KEY NOT NULL,
RUA VARCHAR (50) NOT NULL,
NUM VARCHAR (5) NOT NULL,
BAIRRO VARCHAR (20) NOT NULL,
CIDADE VARCHAR (20) NOT NULL,
GRADUACAO INT NOT NULL,
ESPECIALIZACAO INT NOT NULL,
MESTRADO INT NOT NULL,
DOUTORADO INT NOT NULL,
CONSTRAINT FK_ID_GRADUACAO FOREIGN KEY (GRADUACAO) REFERENCES GRADUACAO (ID_GRADUACAO),
CONSTRAINT FK_ID_ESPECIALIZACAO FOREIGN KEY (ESPECIALIZACAO) REFERENCES ESPECIALIZACAO (ID_ESPECIALIZACAO),
CONSTRAINT FK_ID_MESTRADO FOREIGN KEY (MESTRADO) REFERENCES MESTRADO (ID_MESTRADO),
CONSTRAINT FK_ID_DOUTORADO FOREIGN KEY (DOUTORADO) REFERENCES DOUTORADO (ID_DOUTORADO)
);

SELECT * FROM DOUTORADO;