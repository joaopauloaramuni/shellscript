#!/bin/bash

#Testa quantidade de argumentos digitados pelo usuário
#-----------------------------------------------------
if [ $# -eq 0 ]
then
  echo "Nao foram passados parametros para o script"
  exit 1
fi

if [ $1 -gt 0 ]
then
    echo -e "$1 é positivo"
  elif [ $1 -lt 0 ]
  then
    echo -e "$1 é negativo"
  elif [ $1 -eq 0 ]
  then
    echo -e "$1 é zero"
  else
    echo -e "$1 nao eh um numero"
fi
