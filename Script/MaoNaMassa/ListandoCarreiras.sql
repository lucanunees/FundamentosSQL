 USE [balta]


-- Desta forma eu estou fazendo um count diexando mais performatico, poderia 
-- fazer um sub Select que também funcionaria porém não seria performatico.

CREATE OR ALTER VIEW vwCareer AS -- Criando uma view para esse select.

 SELECT 
     [Career].[Id]
    ,[Career].[Title]
    ,[Career].[Url]
    ,COUNT([Id]) AS [Courses]
FROM
    [Career]
    INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]
GROUP BY
     [Career].[Id]
    ,[Career].[Title]
    ,[Career].[Url]


-- Utilizando Sub Select
SELECT
     [Career].[Id]
    ,[Career].[Title]
    ,[Career].[Url] 
    ,(SELECT COUNT(CareerID)  FROM CareerItem WHERE CareerId = Career.Id) AS Courses
FROM [Career]
