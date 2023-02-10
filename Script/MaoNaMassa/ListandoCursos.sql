use [balta]

-- Criando uma view aonde não é necessario mais criar o select abaixo, basta chamar a view que ele executa a mesma coisa.
CREATE or ALTER VIEW vwCourses 
AS
    SELECT 
     [course].[ID]
    ,[course].[Tag]
    ,[course].[Title]
    ,[course].[Url]
    ,[course].[Summary]
    ,[course].[CreateDate]
    ,[category].[Title] AS [Category]
    ,[Author].[Name] AS [Author]
FROM 
    [Course] WITH (NOLOCK)
    INNER JOIN [Category] ON [Course].[CategoryID] = [Category].[ID] 
    INNER JOIN [Author] ON [Course].[AuthorID] = [Author].[ID]
WHERE 
    [Active] = 1
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT 
    *
FROM
    vwCourses
ORDER BY [CreateDate] DESC


/*
SELECT 
     [course].[ID]
    ,[course].[Tag]
    ,[course].[Title]
    ,[course].[Url]
    ,[course].[Summary]
    ,[category].[Title] AS [Category]
    ,[Author].[Name] AS [Author]
FROM 
    [Course] WITH (NOLOCK)
    INNER JOIN [Category] ON [Course].[CategoryID] = [Category].[ID] -- <-- Fazendo o inner join utilizando o campo de referencia na tabela course, com a tabela category.
    INNER JOIN [Author] ON [Course].[AuthorID] = [Author].[ID]
WHERE 
    [Active] = 1
ORDER BY 
    [CreateDate] DESC -- <-- Mesmo não tendo o createDate como coluna o order by já orderna pela data de criação.
*/


SELECT 
    *
FROM
    vwCourses
ORDER BY [CreateDate] DESC