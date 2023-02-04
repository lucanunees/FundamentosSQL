/*
	=== === STORED PROCEDURE E VARIAVEIS ======
 Basicamente é um armazenamento de processamento, dentro de uma procedure
 podemos ter insert,update, select, delete, varios processos diferentes.
  E depois chamar esses procedimentos.
	
  Podemos utilizar variaveis como parametros para executar a proc.
  Utilizando a sintaxe DECLARE.

  Sintaxe:

*/

--USE [Curso]

CREATE OR ALTER PROCEDURE [spListCourses] 
    @Category NVARCHAR(60) -- UTILIZANDO O PARAMETRO DE ENTRADA DA PROC PARA REALIZAR A CONDIÇÃO WHERE.


AS -- Antes do AS podemos ter parametros de entrada para a proc.
  
  DECLARE
   @id INT -- Criei uma variavel e para atribuir um valor, utilizo o SET 
  ,@CategoryId INT -- Declarando outra variavel.
  
  -- Atribuindo valores à elas.
  --SET @ID = 1
  SET @CategoryId = (SELECT TOP 1 [ID] FROM [Categoria] WHERE [Nome] = @Category) -- Aqui estou criando uma variavel e setando um valor nela de outra tabela.
-- porém tem que se certificar que o retorno desse select será um item e tem que estar entre ().

  SELECT 
   [Nome] AS NameCategory
  ,[ID]
  FROM [Categoria]
  WHERE [Nome] = @Category

  SELECT 
         ID
        ,Nome
        ,CategoriaId
        FROM [Curso]
        WHERE [CategoriaId] = @CategoryId --< Desta forma eu estou utilizando a variavel.

GO

-- Para chamar a proc/ executar basta colocar a sintaxe:

exec [spListCourses] 'FrontEnd' -- Ao chamar a proc, eu tenho que passar o parametro ou os parametros.

-- Para dropar a procedure basta colocar a sintaxe:
--DROP PROCEDURE [spListCourses]