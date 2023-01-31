/*
	=== Create table === 

    Bom Utilizar o "USE" para definir o banco aonde será executado a query.
    USE [Estudo] 
    Na criação da tabela, adicionar o ().
*/
CREATE TABLE [Aluno]( 
     [Id] INT IDENTITY
    ,[Nome] NVARCHAR(80)
    ,[Nascimento] DATETIME
    ,[Active] BIT    
)
GO 

/*
    Obs: É utilizado o "[]" na criação da tabela e das colunas pois se 
    for necessario utilizar uma palavra reservada do SQL, ele não irá acusar erro.

	O "GO", serve para conforme ele for lendo ja ir inserindo/fazendo no banco.
    Isso é útil quando tem uma query grande e ao inves de parar a query inteira, ela para apenas
    uma parte.
*/