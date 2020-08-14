#!/bin/bash

function funcaoTeste(){
  echo "Todos os argumentos da funcao teste(): $*"
  echo "Primeiro argumento: $1"
  echo "Segundo argumento: $2"
  echo "Terceiro argumento: $3"
  return
}
#Chamada da funcao
funcaoTeste Oi Tim Vivo
