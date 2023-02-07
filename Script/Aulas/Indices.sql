
/*
	=== Indices ===
	
 Um indice ajuda a organizar os dados porém, na hora de salvar (insert) fica um pouco mais lento..
porém ele ajuda ao fazer a leitura da tabela.
	E no campo de indexes ele mostra os indexes da tabela.
 OBS: Criar o indice sempre em cima da coluna que você utiliza para realizar uma pesquisa na tabela.
 

	Sintaxe:
*/


 CREATE TABLE [Aluno](
      [ID] INT NOT NULL IDENTITY(1, 1)
     ,[Nome] NVARCHAR(80) NOT NULL
     ,[Email] NVARCHAR(80) NOT NULL

     CONSTRAINT [PK_Aluno] PRIMARY KEY ([ID])
 )
GO

 CREATE INDEX [IX_Aluno_Email] ON [Aluno]([Email])
			--Um nome para o index 	Nome da tabela e o campo.
 DROP INDEX [IX_Aluno_Email]  ON [Aluno]-- PARA APAGAR O INDEX