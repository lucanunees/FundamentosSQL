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
                "/* --------- CONSTRAINT UNIQUE ---------\n",
                "    Quando você não quer que uma determinada coluna, os valores possam ser repetidos\n",
                "    você utiliza o unique, por exemplo o campo ID.. Não podemos utilizar dois ID para \n",
                "    a mesma pessoa por exemplo.\n",
                "*/\n",
                "\n",
                "\n",
                "CREATE TABLE [Aluno](\n",
                "     [Id] INT NOT NULL UNIQUE -- <-- Basta adicionar o Unique na coluna. \n",
                "    ,[Nome] NVARCHAR(80) NOT NULL\n",
                "    ,[Nascimento] DATETIME NOT NULL\n",
                "    ,[Active] BIT NOT NULL\n",
                ")"
            ],
            "metadata": {
                "azdata_cell_guid": "cf50abcb-f9e0-440e-a1bd-a7047e4c03d8",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        },
        {
            "cell_type": "markdown",
            "source": [
                "Obs: Pode utilizar o unique para qualquer coluna."
            ],
            "metadata": {
                "azdata_cell_guid": "ceb43984-6bcf-4598-8e8c-7c73f9ca2cf3"
            }
        }
    ]
}