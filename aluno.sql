--create table aluno (
--id INT  NOT NULL IDENTITY,
--nome VARCHAR(35) NOT NULL,
--email varchar(35),
--endereco varchar(100),
--PRIMARY KEY(ID)
--)

--/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [id]
      ,[nome]
    ,[email]
     ,[endereco]
  FROM [ESCOLA].[dbo].[aluno]

--  insert into aluno (nome, email, endereco) values ('Claudio Santos', 'claudio.jk@hotmail.com', 'Rua Moçambique, 118');
--  insert into aluno (nome, email, endereco) values ('Mauricio Silva', 'rodrigosilva@hotmail.com', 'Rua mocidade, 119');
--  insert into aluno (nome, email, endereco) values ('Higor Silva', 'higor.ts@hotmail.com', 'Rua Nova Pieddade, 120');
--  insert into aluno (nome, email, endereco) values ('Marcelo Silva', 'marcelo.ht@hotmail.com', 'Rua Nova novidade, 121');