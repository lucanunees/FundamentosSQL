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
                "/* --------- PRIMARY KEY ---------\n",
                "  \n",
                "*/\n",
                "\n",
                "\n",
                "CREATE TABLE [Aluno](\n",
                "     [Id] INT NOT NULL \n",
                "    ,[Nome] NVARCHAR(80) NOT NULL\n",
                "    ,[Email] NVARCHAR(180) NOT NULL\n",
                "    ,[Nascimento] DATETIME NOT NULL\n",
                "    ,[Active] BIT NOT NULL\n",
                "\n",
                "   CONSTRAINT [PK_ALUNO] PRIMARY KEY([Id]) -- <-- Adicionando um nome na PK (primary key)\n",
                "   CONSTRAINT [PK_EMAIL] UNIQUE([Email])\n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "b9fe6bbf-2fc8-4bee-b005-5f605a9bae21",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "markdown",
            "source": [
                "OR  \n",
                "  \n",
                "USE [Estudo]  \n",
                "  \n",
                "CREATE TABLE [Aluno](  \n",
                "[Id] INT NOT NULL  \n",
                ",[Nome] NVARCHAR(80) NOT NULL  \n",
                ",[Email] NVARCHAR(180) NOT NULL  \n",
                ",[Nascimento] DATETIME NOT NULL  \n",
                ",[Active] BIT NOT NULL  \n",
                "  \n",
                "PRIMARY KEY ([Id])  \n",
                ")  \n",
                "GO"
            ],
            "metadata": {
                "azdata_cell_guid": "4cf8e3ba-7124-4dc4-b797-9742ab813068"
            }
        },
        {
            "cell_type": "markdown",
            "source": [
                "Podemos ter chave primaria composta."
            ],
            "metadata": {
                "azdata_cell_guid": "5b289de1-deea-4adb-b724-310a7f964074"
            }
        },
        {
            "cell_type": "markdown",
            "source": [
                "Sintaxe:"
            ],
            "metadata": {
                "azdata_cell_guid": "97a4fd4c-af48-46a8-8a48-9ec6448a197b"
            }
        },
        {
            "cell_type": "code",
            "source": [
                "USE [Estudo]\t\n",
                "\t\n",
                "\tCREATE TABLE [Aluno](\n",
                "     [Id] INT NOT NULL \n",
                "    ,[Nome] NVARCHAR(80) NOT NULL\n",
                "\t,[Email] NVARCHAR(180) NOT NULL\n",
                "    ,[Nascimento] DATETIME NOT NULL\n",
                "    ,[Active] BIT NOT NULL\n",
                "\n",
                "    PRIMARY KEY ([Id], [Email]) -- <-- Se o ID e o Email forem diferentes ele irá aceitar o insert.\n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "21fd515d-3f27-46e6-bdd5-5cff5b05cbf2",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "markdown",
            "source": [
                "Caso tenha esquecido de adicionar o primary key, você pode adicionar utilizando o alter table  \n",
                "  \n",
                "Sintaxe:  \n",
                "  \n",
                "ALTER TABLE [Aluno]  \n",
                "ADD PRIMARY KEY ([Id])"
            ],
            "metadata": {
                "azdata_cell_guid": "21a183cf-ddc1-4df8-a1f9-911cc03e1741"
            }
        },
        {
            "cell_type": "markdown",
            "source": [
                "Para dropar a chave primaria.  \n",
                "  \n",
                "Sintaxe:  \n",
                "  \n",
                "ALTER TABLE [Aluno]  \n",
                "DROP CONSTRAINT [PK_ALUNO] <- Nome da chave primaria."
            ],
            "metadata": {
                "azdata_cell_guid": "77b500bd-eb48-469c-998b-17bfb882bb01"
            }
        },
        {
            "cell_type": "markdown",
            "source": [
                "Podemos dar o nome da chave primaria(ao criar a tabela), pois ele cria uma chave com nome aleatorio.  \n",
                "O mesmo serve para o campo UNIQUE.  \n",
                "  \n",
                "Sintaxe:  \n",
                "  \n",
                "CONSTRAINT [PK_ALUNO] PRIMARY KEY([Id])  \n",
                "CONSTRAINT [PK_EMAIL] UNIQUE([Email])"
            ],
            "metadata": {
                "azdata_cell_guid": "27fa4618-134e-4dc6-99f8-6c2347f39b94"
            }
        }
    ]
}