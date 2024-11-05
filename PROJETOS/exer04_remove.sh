#!/bin/bash

if rm $1
then
  echo -e "\n\n Arquivo $1 removido com sucesso"
else
  echo -e "\n\n Arquivo $1 nao pode ser removido"
fi
