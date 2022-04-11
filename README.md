# SISTEMA UNIVERSITARIO

Atividade em grupo da Let's Code realizade pelo grupo amarelo.

## 💻 Sobre o projeto 

O objetivo deste projeto é a construção de um sistema para universidade. Contendo cadastro de alunos e professores, pare ter auxílio as suas disciplinas e turmas, e ter uma organização com um diário de classe.



## ALUNOS:

- Anicky Oliveira
- Enzo Goulart
- Hannah Freitas
- Kayllane Gomes
- Paula Fagundes
- Rejane Elisa

## MODELAGEM:


<img src = "./universitario/universitario/assets/modelagem endpoints.png"  width="350" height="300"/>

A primeira modelagem foi para definir a estrutura do projeto e os endpoints

<img src = "./universitario/universitario/assets/Modelagem BD Sistema Universitário.png"  width="350" height="300"/>

Modelagem original do projeto para Sistema Universitário onde adequamos ao MVP (Mínimo Produto Viável) para nossa primeira entrega ao cliente focando na gestão de turmas

<img src = "./universitario/universitario/assets/BD UNIVERSIDADE CRESCER.png"  width="350" height="300"/>

## 🔃 Manipulação das Rotas de Alunos:

| Método HTTP  | Endpoint                | Descrição                            |
| ------------ | ----------------------- | ------------------------------------ |
| GET          | `/aluno`                | Retorna todos os alunos              |
| POST         | `/aluno`                | Cria/cadastra um novo aluno          |
| PUT          | `/aluno/{id}`           | Altera informações de um aluno       |

