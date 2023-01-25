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
                "\n",
                "CREATE TABLE [Aluno](\n",
                "     [Id] INT NOT NULL \n",
                "    ,[Nome] NVARCHAR(80) NOT NULL\n",
                "    ,[Email] NVARCHAR(180) NOT NULL \n",
                "    ,[Nascimento] DATETIME  NULL\n",
                "    ,[Active] BIT NOT NULL DEFAULT(0)\n",
                "\n",
                "   ,CONSTRAINT [PK_ALUNO] PRIMARY KEY([Id]) -- <-- Adicionando um nome na PK (primary key)\n",
                "   ,CONSTRAINT [UQ_ALUNO_EMAIL] UNIQUE([Email])\n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "c3ffc2e1-bac0-42a5-8ac6-518874f0cfbf",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}