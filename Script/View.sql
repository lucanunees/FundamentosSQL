/*
	=== VIEW ===
	É basicamente uma foto do select, para que eu não precise ficar 
    executando o select inteiro eu posso joga-lo em uma view e executar a view.

    obs: Uma view não pode ter a sintaxe "Order by"

	Sintaxe:
*/	

USE [Cursos]
GO

  CREATE OR ALTER VIEW  vwContagemCursoPorCategoria AS

    SELECT TOP 100
         [Categoria].[ID]
        ,[Categoria].[Nome]
        ,COUNT([Curso].CategoriaId) AS [Curso]

    FROM 
        [Categoria]
        INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[ID]

    GROUP BY 
        [Categoria].[ID]
        ,[Categoria].[Nome]
        ,[Curso].[CategoriaId] 
    HAVING 
        COUNT ([Curso].[CategoriaId]) > 1
/* ===============================================================================================
    Para consultar a view 
	basta utilizar a sintaxe:
*/	
	SELECT * 
	FROM vwContagemCursoPorCategoria