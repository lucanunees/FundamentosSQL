USE [Estudo]
              

 CREATE TABLE [Aluno] (
     [Id] INT NOT NULL IDENTITY(1, 1)
    ,[Nome] NVARCHAR(80) NOT NULL
    ,[Email] NVARCHAR(180) NOT NULL
    ,[Nascimento] DATETIME  NULL
    ,[Active] BIT NOT NULL DEFAULT(0)
           
    ,CONSTRAINT [PK_ALUNO] PRIMARY KEY([Id]) -- <-- Adicionando um nome na PK (primary key)\n",
    ,CONSTRAINT [UQ_ALUNO_EMAIL] UNIQUE([Email])
 ) 
 GO            
    CREATE INDEX [IX_Aluno_Email] ON [Aluno] ([Email])


 CREATE TABLE [Curso] (
   [ID] INT NOT NULL IDENTITY(1, 1) -- Ele vai incrementar de 1 em 1, então o proximo registro automaticamente será 2.
  ,[Nome] NVARCHAR(80) NOT NULL
  ,[CategoriaId] INT NOT NULL
  
   CONSTRAINT [PK_Curso] PRIMARY KEY ([ID]),
   CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY ([CategoriaId])
   REFERENCES [Categoria]([ID])
)
GO


 CREATE TABLE [ProgressoCurso](
  [AlunoID] INT NOT NULL 
  ,[CursoID] INT NOT NULL
  ,[Progresso] INT NOT NULL
  ,[UltimaAtualizacao] DATETIME NOT NULL DEFAULT(GETDATE())

   CONSTRAINT [PK_ProgressoCurso] PRIMARY KEY([AlunoID],[CursoID]) -- <-- Chave Composta.
)
GO


 CREATE TABLE [Categoria](
  [ID] INT NOT NULL 
 ,[Nome] INT NOT NULL
  
  CONSTRAINT [PK_Categoria] PRIMARY KEY([ID])
)
GO