/*
	=== PRIMARY KEY ===

 - Para identificar um campo, podemos utilizar também a primary key (chave primaria) desta tabela,
 o que significa que este valor não é null e é unico.
 
	Sintaxe:
*/	
USE [Estudo]

	CREATE TABLE [Aluno](
     [Id] INT PRIMARY KEY
    ,[Nome] NVARCHAR(80) NOT NULL
    ,[Nascimento] DATETIME NOT NULL
    ,[Active] BIT NOT NULL DEFAULT(0)
	)
GO

	--OU
	
USE [Estudo]	
	
	CREATE TABLE [Aluno2](
     [Id] INT NOT NULL 
    ,[Nome] NVARCHAR(80) NOT NULL
	,[Email] NVARCHAR(180) NOT NULL
    ,[Nascimento] DATETIME NOT NULL
    ,[Active] BIT NOT NULL DEFAULT(0)

   ,CONSTRAINT [PK_ALUNO] PRIMARY KEY([Id]) -- <-- Adicionando um nome na PK (primary key)
   ,CONSTRAINT [UQ_ALUNO_EMAIL] UNIQUE([Email])
)
GO 

 -- Podemos ter chave primaria composta.
	
	Sintaxe:
	
USE [Estudo]	
	
	CREATE TABLE [Aluno3](
     [Id] INT NOT NULL 
    ,[Nome] NVARCHAR(80) NOT NULL
	,[Email] NVARCHAR(180) NOT NULL
    ,[Nascimento] DATETIME NOT NULL
    ,[Active] BIT NOT NULL DEFAULT(0)

    ,PRIMARY KEY ([Id], [Email]) -- <-- Se o ID e o Email forem diferentes ele irá aceitar o insert.
)
GO 


 -- Caso tenha esquecido de adicionar o primary key, você pode adicionar utilizando o alter table
    
    --Sintaxe:

    ALTER TABLE [Aluno]
     ADD PRIMARY KEY ([Id])



 -- Para dropar a chave primaria.

    --Sintaxe:

    ALTER TABLE [Aluno]
     DROP CONSTRAINT [PK_ALUNO] --<- Nome da chave primaria.


 -- Podemos dar o nome da chave primaria(ao criar a tabela), pois ele cria uma chave com nome aleatorio.
 -- O mesmo serve para o campo UNIQUE.
    
   -- Sintaxe:

	,CONSTRAINT [PK_ALUNO] PRIMARY KEY([Id]) -- <-- Adicionando um nome na PK (primary key)
	,CONSTRAINT [PK_ALUNO_EMAIL] UNIQUE([Email])