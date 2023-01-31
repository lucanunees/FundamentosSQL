
USE [Estudo] 


CREATE TABLE [Aluno]( 
     [Id] INT IDENTITY
    ,[Nome] NVARCHAR(80)
    ,[Nascimento] DATETIME
    ,[Active] BIT    
)
GO 

/*
 Criamos a tabela acima e precisamos alterar alguma coluna 
 ou adicionar uma nova.
  Podemos utilizar a sintaxe:
 
	Sintaxe:
*/

 ALTER TABLE [Aluno] --<- Nome da tabela.
  ADD [Document] NVARCHAR(11) --<- Adicionando a nova coluna documento.
 
 -- Para tirar uma coluna, basta utilizar a sintaxe abaixo:
 
	ALTER TABLE [Aluno]
	 DROP COLUMN [Document]
  

 -- É possivel também alterar o tipo da coluna.
 
	--Sintaxe:
	
	ALTER TABLE [Aluno]
	ALTER COLUMN [Document] CHAR(11)