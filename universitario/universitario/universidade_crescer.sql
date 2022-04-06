CREATE TABLE USUARIO (ID_USUARIO SERIAL CONSTRAINT PK_ID_USUARIO PRIMARY KEY NOT NULL,
EMAIL VARCHAR (50) NOT NULL,
SENHA CHAR (8) NOT NULL,
DATA_CRIACAO_USUARIO DATE NOT NULL
--TIPO  
);

CREATE TABLE ALUNO (ID_ALUNO SERIAL CONSTRAINT PK_ID_ALUNO PRIMARY KEY NOT NULL,
USUARIO INT NOT NULL,
NOME VARCHAR (50) NOT NULL,
CPF VARCHAR(11) NOT NULL UNIQUE,
RUA VARCHAR(50) NOT NULL,
NUM VARCHAR(5) NOT NULL,
BAIRRO VARCHAR(20) NOT NULL,
CIDADE VARCHAR(20) NOT NULL,
CEP CHAR(8) NOT NULL,
CONSTRAINT FK_ID_USUARIO FOREIGN KEY (USUARIO) REFERENCES USUARIO(ID_USUARIO)
);

CREATE TABLE PROFESSOR (ID_PROFESSOR SERIAL CONSTRAINT PK_ID_PROFESSOR PRIMARY KEY NOT NULL,
USUARIO INT NOT NULL,
NOME VARCHAR (50) NOT NULL,
CONSTRAINT FK_ID_USUARIO FOREIGN KEY (USUARIO) REFERENCES USUARIO(ID_USUARIO)
);

CREATE TABLE ACESSO (EMAIL VARCHAR (50) NOT NULL,
SENHA CHAR (8) NOT NULL
);

CREATE TABLE CURSO (ID_CURSO SERIAL CONSTRAINT PK_ID_CURSO PRIMARY KEY NOT NULL,
TURNO VARCHAR (10) NOT NULL,
ALUNO INT NOT NULL,
CONSTRAINT FK_ID_ALUNO FOREIGN KEY (ALUNO) REFERENCES ALUNO(ID_ALUNO)
);

CREATE TABLE TURMA (ID_TURMA SERIAL CONSTRAINT PK_ID_TURMA PRIMARY KEY NOT NULL,
ALUNO INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_ALUNO FOREIGN KEY (ALUNO) REFERENCES ALUNO(ID_ALUNO),
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

CREATE TABLE DISCIPLINA (ID_DISCIPLINA SERIAL CONSTRAINT PK_ID_DISCIPLINA PRIMARY KEY NOT NULL,
NOME VARCHAR(20) NOT NULL,
PROFESSOR INT NOT NULL,
CONSTRAINT FK_ID_PROFESSOR FOREIGN KEY (PROFESSOR) REFERENCES PROFESSOR(ID_PROFESSOR)
);

CREATE TABLE CURSO_DISCIPLINA (ID_CURSO_DISCIPLINA SERIAL CONSTRAINT PK_ID_CURSO_DISCIPLINA PRIMARY KEY NOT NULL,
DISCIPLINA INT NOT NULL,
CURSO INT NOT NULL,
CONSTRAINT FK_ID_DISCIPLINA FOREIGN KEY (DISCIPLINA) REFERENCES DISCIPLINA(ID_DISCIPLINA),
CONSTRAINT FK_ID_CURSO FOREIGN KEY (CURSO) REFERENCES CURSO(ID_CURSO)
);

CREATE TABLE PROF_DISCIPLINA (ID_PROF_DISCIPLINA SERIAL CONSTRAINT PK_ID_PROF_DISCIPLINA PRIMARY KEY NOT NULL,
PROFESSOR INT NOT NULL,
DISCIPLINA INT NOT NULL,
CONSTRAINT FK_ID_PROFESSOR FOREIGN KEY (PROFESSOR) REFERENCES PROFESSOR(ID_PROFESSOR),
CONSTRAINT FK_ID_DISCIPLINA FOREIGN KEY (DISCIPLINA) REFERENCES DISCIPLINA(ID_DISCIPLINA)
);

CREATE TABLE PROF_TURMA(ID_PROF_TURMA SERIAL CONSTRAINT PK_IF_PROF_TURMA PRIMARY KEY NOT NULL,
PROFESSOR INT NOT NULL,
TURMA INT NOT NULL,
CONSTRAINT FK_ID_PROFESSOR FOREIGN KEY (PROFESSOR) REFERENCES PROFESSOR(ID_PROFESSOR),
CONSTRAINT FK_ID_TURMA FOREIGN KEY (TURMA) REFERENCES TURMA(ID_TURMA)
);