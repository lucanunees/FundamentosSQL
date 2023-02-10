
--CREATE DATABASE [BancoDeProducao]

USE [BancoDeProducao]  


CREATE TABLE [Student]
(
     [ID] UNIQUEIDENTIFIER NOT NULL -- <-- Aqui estamos utilizando o guid, ele ocupa mais espaço, como ele gera um ID aleatorio, deixa mais "seguro" quando utilizar links.
    ,[Name] NVARCHAR(120) NOT NULL
    ,[Email] NVARCHAR(180) NOT NULL
    ,[Document] NVARCHAR(20) NULL
    ,[Phone] NVARCHAR (20) NULL
    ,[Birthdate] DATETIME NULL
    ,[CreateDate] DATETIME NOT NULL DEFAULT(GETDATE()) -- O getdate é uma função que pega hora de acordo com a localização do servidor.

    CONSTRAINT [PK_Student] PRIMARY KEY ([ID])
);
GO


CREATE TABLE [Author]
(
     [ID] UNIQUEIDENTIFIER NOT NULL
    ,[Name] NVARCHAR(80) NOT NULL
    ,[Title] NVARCHAR(80) NOT NULL
    ,[Image] NVARCHAR(1024) NOT NULL
    ,[Bio] NVARCHAR(2000) NOT NULL
    ,[Url] NVARCHAR(1024) NULL
    ,[Email] NVARCHAR(180) NOT NULL
    ,[Type] TINYINT NOT NULL -- <-- Esse tipo ele é diferente do INT, o tipo TINYINT vai até o 255. 

    CONSTRAINT [PK_Author] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Career]
(
     [ID] UNIQUEIDENTIFIER NOT NULL
    ,[Title] NVARCHAR(160) NOT NULL
    ,[Summary] NVARCHAR(2000) NOT NULL
    ,[Url] NVARCHAR(1024) NOT NULL
    ,[DurationInMinutes] INT NOT NULL
    ,[Active] BIT NOT NULL
    ,[Featured] BIT NOT NULL
    ,[Tags] NVARCHAR(160) NOT NULL

    CONSTRAINT [PK_Career] PRIMARY KEY ([ID])

);
GO

CREATE TABLE [Category]
(
     [ID] UNIQUEIDENTIFIER NOT NULL
    ,[Title] NVARCHAR(160) NOT NULL
    ,[Url] NVARCHAR(1024) NOT NULL
    ,[Summary] NVARCHAR(2000) NOT NULL
    ,[Order] INT NOT NULL
    ,[Description] TEXT NOT NULL -- <-- O tipo text recebe um texto mesmo, podendo ser até um HTML, por ser muito longo.
    ,[Featured] BIT NOT NULL

    CONSTRAINT [PK_Category] PRIMARY KEY ([ID])
);
GO


CREATE TABLE [Course]
(
     [ID] UNIQUEIDENTIFIER NOT NULL
    ,[Tag] NVARCHAR(20) NOT NULL
    ,[Title] NVARCHAR(160) NOT NULL
    ,[Summary] NVARCHAR(2000) NOT NULL
    ,[Url] NVARCHAR(1024) NOT NULL
    ,[Level] TINYINT NOT NULL
    ,[DurationInMinutes] INT NOT NULL
    ,[CreateDate] DATETIME NOT NULL
    ,[LastUpdateDate] DATETIME NOT NULL
    ,[Active] BIT NOT NULL
    ,[Free] BIT NOT NULL
    ,[Featured] BIT NOT NULL
    ,[AuthorID] UNIQUEIDENTIFIER  NOT NULL
    ,[CategoryID] UNIQUEIDENTIFIER NOT NULL
    ,[Tags] NVARCHAR(160) NOT NULL

     CONSTRAINT [PK_Course] PRIMARY KEY ([ID])
    ,CONSTRAINT [FK_Course_Author_AuthorID] FOREIGN KEY ([AuthorID])
        REFERENCES [Author] ([ID]) ON DELETE NO ACTION -- <-- O On delete serve por exemplo se eu deletar um curso, ele não vai excluir os autores e categorias relacionadas.
    ,CONSTRAINT [FK_Course_Category_CategoryID] FOREIGN KEY ([CategoryID])
        REFERENCES [Category] ([ID]) ON DELETE NO ACTION

);
GO

CREATE TABLE [CareerItem]
(
     [CareerItemID] UNIQUEIDENTIFIER NOT NULL   
    ,[CourseID] UNIQUEIDENTIFIER NOT NULL
    ,[Title] NVARCHAR(160) NOT NULL
    ,[Description] TEXT NOT NULL
    ,[Order] TINYINT NOT NULL
    

     CONSTRAINT [PK_CareerItem] PRIMARY KEY ([CareerItemID], [CourseID])
    ,CONSTRAINT [FK_CareerItem_Career_CareerID] FOREIGN KEY ([CareerItemID])
        REFERENCES [Career] ([ID]) ON DELETE NO ACTION
    ,CONSTRAINT [FK_CareerItem_Course_CourseID] FOREIGN KEY ([CourseID])
        REFERENCES [Course] ([ID]) ON DELETE NO ACTION
)


CREATE TABLE [StudentCourse]
(
     [CourseID] UNIQUEIDENTIFIER NOT NULL
    ,[StudentID] UNIQUEIDENTIFIER NOT NULL
    ,[Progress] TINYINT NOT NULL
    ,[Favorite] BIT NOT NULL
    ,[StartDate] DATETIME NOT NULL
    ,[LastUpdateDate] DATETIME NULL DEFAULT(GETDATE())

     CONSTRAINT [PK_StudentCourse] PRIMARY KEY ([CourseID], [StudentID])
     ,CONSTRAINT [FK_StudentCourse_Course_CourseID] FOREIGN KEY ([CourseID])
        REFERENCES [Course] ([ID])
     ,CONSTRAINT [FK_StudentCourse_Student_StudentID] FOREIGN KEY ([StudentID])
        REFERENCES [Student] ([ID])
);
GO

