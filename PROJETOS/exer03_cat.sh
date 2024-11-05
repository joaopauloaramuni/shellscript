#!/bin/bash

if cat $1
then
  echo -e "\n\nArquivo $1 executado com sucesso"
else
  echo -e "\n\nArquivo $1 não pode ser executado"
fi
