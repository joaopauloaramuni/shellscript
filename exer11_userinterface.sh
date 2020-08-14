#!/bin/bash

echo "Digite nome:"
read nome

echo "Digite idade:"
read idade

anoquevem=`expr $idade + 1`


if [ $idade -lt 18 ] 
	then 
	echo "Fala $nome ! Ano que vem você faz $anoquevem ! Você é menor de idade!"
else 
	echo "Fala $nome ! Ano que vem você faz $anoquevem ! Você é maior de idade!"
fi
