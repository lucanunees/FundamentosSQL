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
                "\n",
                "CREATE TABLE [Aluno](\n",
                "     [Id] INT IDENTITY\n",
                "    ,[Nome] NVARCHAR(80)\n",
                "    ,[Nascimento] DATETIME\n",
                "    ,[Active] BIT    \n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "7f29f4c9-f6f0-4008-b91c-46d27c4246be",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "markdown",
            "source": [
                "Criamos a tabela acima e precisamos alterar alguma coluna  \n",
                "ou adicionar uma nova.  \n",
                "Podemos utilizar a sintaxe:"
            ],
            "metadata": {
                "azdata_cell_guid": "212f8175-17ef-4702-bb4f-046d4881d33c"
            }
        },
        {
            "cell_type": "code",
            "source": [
                "Sintaxe:\n",
                "\n",
                "  ALTER TABLE [Aluno] -- <- Nome da tabela.\n",
                "  ADD [Document] NVARCHAR(11) -- <- Adicionando a nova coluna documento.\n",
                " \n",
                "/*\n",
                "     Para tirar uma coluna, basta utilizar a sintaxe abaixo:\n",
                "*/\n",
                "\tALTER TABLE [Aluno]\n",
                "\t DROP COLUMN [Document]\n",
                "  \n",
                "/*\n",
                "    É possivel também alterar o tipo da coluna.\n",
                "*/\n",
                "\tSintaxe:\n",
                "\t\n",
                "\tALTER TABLE [Aluno]\n",
                "\tALTER COLUMN [Document] CHAR(11)"
            ],
            "metadata": {
                "azdata_cell_guid": "f4803e92-a9a2-40f6-adaf-73c584d90da7",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}