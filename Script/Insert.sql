
CREATE DATABASE [Cursos]
GO

USE[Cursos]

CREATE TABLE [Categoria](
     [ID] INT NOT NULL IDENTITY(1, 1)
    ,[Nome] NVARCHAR(80) NOT NULL

    CONSTRAINT [PK_Categoria] PRIMARY KEY ([ID])
)
GO


CREATE TABLE [Curso](
     [ID] INT NOT NULL IDENTITY(1 ,1)
    ,[Nome] NVARCHAR(80) NOT NULL
    ,[CategoriaID] INT NOT NULL

    CONSTRAINT [PK_Curso] PRIMARY KEY ([ID])
    ,CONSTRAINT [FK_Curso_CategoriaID] FOREIGN KEY ([CategoriaID])
        REFERENCES [Categoria] ([ID])
)

GO

-- Realizando o insert na tabela de Categoria
INSERT INTO [Categoria]([Nome]) --<-- Campos que iremos realizar o insert, como colocamos ID = identity, não precisamos passar o ID, ele é gerado automaticamente.
VALUES('Backend') --<-- valores referente aos campos.

INSERT INTO [Categoria] ([Nome])
VALUES('FrontEnd')

INSERT INTO [Categoria] ([Nome])
VALUES('Mobile')



-- Realizando o insert na tabela de Curso
INSERT INTO [Curso]([Nome],[CategoriaID])
VALUES('Fundamentos de C#', 1)

INSERT INTO [Curso]([Nome],[CategoriaID])
VALUES('Fundamentos de OOP', 1)

INSERT INTO [Curso]([Nome],[CategoriaID])
VALUES('Angular', 2)

INSERT INTO [Curso]([Nome],[CategoriaID])
VALUES('Flutter', 3)

INSERT INTO [Curso]([Nome],[CategoriaID])
VALUES('Flutter E SQLIte', 3)
