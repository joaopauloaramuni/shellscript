#!/bin/bash

#Testa quantidade de argumentos digitados pelo usuário
#-----------------------------------------------------
if [ $# -eq 0 ]
then
  echo -e "$0: <script> <num_int>\n"
  exit 1
fi


if test $1 -gt 0
then
  echo -e "$1 é positivo"
else
  echo -e "$1 é negativo"
fi
