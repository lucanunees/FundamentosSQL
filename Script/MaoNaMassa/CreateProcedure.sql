USE [balta]
GO
DECLARE @StudentId UNIQUEIDENTIFIER = 'f0668991-1c59-4286-b16b-e4bafc09f325'

--Criando uma Procedure

CREATE OR ALTER PROCEDURE spStudentProgress(
    -- declarando uma variavel.
    @StudentID UNIQUEIDENTIFIER
)
AS

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

-- Executando a chamada da proc.
exec spStudentProgress 'f0668991-1c59-4286-b16b-e4bafc09f325'

--Excluindo um Aluno, é necessario deletar um Aluno na sequencia correta, seguindo a ordem das tabelas.


CREATE OR ALTER PROCEDURE spDeleteStudent(
    @StudentID UNIQUEIDENTIFIER
)
AS
    BEGIN TRANSACTION
    
        DELETE FROM 
                [StudentCourse]
        WHERE [StudentId] = @StudentID

        DELETE FROM 
                [Student]
        WHERE [ID] = @StudentID

    COMMIT