USE [balta]
GO

-- Visualizar o progresso que os alunos estão em determinado curso.

SELECT     
     [Student].[Name] AS [Student]
    ,[Course].[Title] AS [Course]
    ,[StudentCourse].[Progress]
FROM [StudentCourse]    
     INNER JOIN [Student]  ON [StudentCourse].[StudentId] = [Student].[Id] -- Quero juntar as informações da tabela Student com a Student Course aonde Student course.StudentId é igual a StudentID
     INNER JOIN [Course]   ON [StudentCourse].[CourseId] = [Course].[Id]  -- Estou acrescentando as informações do Curso.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Pegando as informações de um Aluno especifico.

SELECT 
    *
FROM [Student]

DECLARE @StudentId UNIQUEIDENTIFIER = 'f0668991-1c59-4286-b16b-e4bafc09f325'

SELECT     
     [Student].[Name] AS [Student]
    ,[Course].[Title] AS [Course] 
    ,[StudentCourse].[Progress]
    ,[StudentCourse].[LastUpdateDate]
FROM [StudentCourse]    
     INNER JOIN [Student]  ON [StudentCourse].[StudentId] = [Student].[Id] 
     INNER JOIN [Course]   ON [StudentCourse].[CourseId] = [Course].[Id]  
WHERE 
    [StudentCourse].[StudentID] = @StudentId
    AND [StudentCourse].[Progress] <= 100
    AND [StudentCourse].[Progress] >= 0
ORDER BY
    [StudentCourse].[LastUpdateDate] DESC