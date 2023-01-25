{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "USE [Estudo]\n",
                "\n",
                "/* --------- CONSTRAINT ---------\n",
                "    O constraint serve para limitar as colunas, por padrão os campos \n",
                "    criados vem como nullable ou seja podemos armazenar nada nos valores. \n",
                "    Por exemplo uma determinada coluna pode receber valores NULL, ou outro tipo de valor,\n",
                "    sem ser o correspondente (string, int, char etc).\n",
                "*/\n",
                "\n",
                "\n",
                "CREATE TABLE [Aluno](\n",
                "     [Id] INT NOT NULL -- <- Colocando a constraint Not null, significa que esse campo não pode receber null.\n",
                "    ,[Nome] NVARCHAR(80) NOT NULL\n",
                "    ,[Nascimento] DATETIME NOT NULL\n",
                "    ,[Active] BIT NOT NULL\n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "86519c22-0a0d-4bb9-9981-f7e3b7ec9ab1",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "markdown",
            "source": [
                "- Caso eu precise alterar/Definir alguma constraint que no momento da criação da tabela  \n",
                "acabei esquecendo, é possivel utilizar o Alter table e adicionar."
            ],
            "metadata": {
                "azdata_cell_guid": "7d5ab080-6359-47ab-8628-4b7ab334b942"
            }
        },
        {
            "cell_type": "markdown",
            "source": [
                "Sintaxe:"
            ],
            "metadata": {
                "azdata_cell_guid": "ba9e21e5-d3bd-44e2-a88a-6f29877ac85d"
            }
        },
        {
            "cell_type": "code",
            "source": [
                "ALTER TABLE [Aluno]\n",
                "\t ALTER COLUMN [Active] BIT NOT NULL\n",
                "\n",
                "    ALTER TABLE [Aluno]\n",
                "\t ALTER COLUMN [Nome] NVARCHAR(80) NOT NULL\n",
                "\n",
                "    ALTER TABLE [Aluno]\n",
                "\t ALTER COLUMN [Nascimento] DATETIME NOT NULL"
            ],
            "metadata": {
                "azdata_cell_guid": "e54fb651-b807-4539-bd39-d2c96a05c090",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "markdown",
            "source": [
                "- Caso você tentar converter uma coluna que ja tenha um dado armazenado nullable, ou seja, vazio  \n",
                "ao executar o alter ele irá dar erro. Pois ele não consegue converter esse valor.  \n",
                "Neste caso, você precisa adicionar o Default(), para ele adicionar um valor padrão  \n",
                "Obs: Não funciona utilizando o alter table, tem que colocar o default na criação da tabela."
            ],
            "metadata": {
                "azdata_cell_guid": "224b5b46-551a-4a21-b3bd-bfb16a00aee6"
            }
        }
    ]
}