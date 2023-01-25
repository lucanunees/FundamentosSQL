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
                "azdata_cell_guid": "262d72f9-a158-4924-b9fd-1dafad05e7aa",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}