/*
	=== Constraint Unique ===

 - Quando você não quer que uma determinada coluna, os valores possam ser repetidos
 você utiliza o unique, por exemplo o campo ID.. Não podemos utilizar dois ID para 
 a mesma pessoa por exemplo.
 
	Sintaxe:
*/

	CREATE TABLE [Aluno](
     [Id] INT NOT NULL UNIQUE  --<-- Basta adicionar o Unique na coluna. 
    ,[Nome] NVARCHAR(80) NOT NULL
    ,[Nascimento] DATETIME NOT NULL
    ,[Active] BIT NOT NULL
)
GO 

--Obs: Pode utilizar o unique para qualquer coluna.