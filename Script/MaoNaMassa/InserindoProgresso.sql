USE [balta]


SELECT 
    *
FROM [Student]

SELECT                   -- Essas duas tabelas tem um vinculo já, uma contém o aluno e a outra os cursos que o aluno se inscreveu.
    *
FROM [StudentCourse]


SELECT  
    *
FROM [Course]
--------------- Realizando o insert nessas tabelas ---------------

--SELECT NEWID() -- Para gerar um ID aleatorio para o meu student.

INSERT INTO 
    [Student]  -- () Neste primeiro campo eu posso inserir as colunas aonde serão adicionado as informações ou passar em branco, porém os values precisam ser seguidos na orderm
                 -- das colunas da tabela.
VALUES (
     'f0668991-1c59-4286-b16b-e4bafc09f325'
    ,'Lucas Nunes'
    ,'LucasRafaelNunees@gmail.com'
    ,'12345678910'
    ,'123456789'
    ,'1997-09-24'
    ,GETDATE()
)

-- Adicionando o Aluno criado à cima, com a tabela de studentCourses, para saber o curso que o aluno esta fazendo.
INSERT INTO 
    [StudentCourse]
VALUES (
     '5ef614da-366d-6156-d049-694800000000'
    ,'f0668991-1c59-4286-b16b-e4bafc09f325'
    ,100
    ,0
    ,DATEADD(DAY, -5, GETDATE()) -- está função do SQL server adiciona ou retirar o dia da data atual.
    ,GETDATE()
)