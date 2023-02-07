/*

	=== UPDATE ===

    O update serve para atualizar algum dado da tabela.
 
     Utilizar o Begin Transaction
 
    Sintaxe:
*/

  BEGIN TRANSACTION
  
  UPDATE  [CATEGORIA]
	
	SET [NOME] = 'Azure'
    WHERE [ID] = 1002
  
 -- COMMIT -- Confirma as mudanças.
 -- ROLLBACK -- Desfaz as atualizações.

