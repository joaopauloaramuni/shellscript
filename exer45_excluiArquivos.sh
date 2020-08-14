#!/bin/bash

#Script para excluir arquivos de acordo com sua extensão

if [ $# -ne 1 ]
then
    echo "Você deve informar um único parâmetro (diretorio)"
    exit 0
fi

pasta=$1

cd $pasta

# Lista e conta o número de arquivos em cada extensão
TXT=$(ls -1 *.txt | wc -l)
MP4=$(ls -1 *.mp4 | wc -l)
PNG=$(ls -1 *.png | wc -l)

clear

echo ""
echo "------------------------------"
echo "A pasta $pasta possui:        "
echo "$TXT arquivos .txt            "
echo "$MP4 arquivos .mp4            "
echo "$PNG arquivos .png            "
echo ""
echo "------------------------------"

read -p "Qual extensao deseja excluir: " opcao

# Testa se a extensão digitada é txt, mp4 ou png e exclui os arquivos com esta extensao
if [ $opcao = "txt" ]
then
    rm -f *.txt
elif [ $opcao = "mp4" ]
then
    rm -f *.mp4
elif [ $opcao = "png" ]
then
    rm -f *.png
else
    echo "Opcao invalida"
    exit 0
fi
