#!/bin/bash
#Script simples para fazer backup de um diretório fornecido por parâmetro. É gerado um arquivo compactado .zip.

origem=$1

#Verificar se foi fornecido parâmetro
if [ $# -lt 1 ]; then
    echo
    echo "ERRO: Faltando parâmetro"
    echo
    exit
fi
#Verificar se o diretório de origem existe
if [ ! -d $origem ]; then
    echo
    echo "ERRO: Diretório $origem não existe"
    echo
    exit
fi

clear
data=`date +%H%M%S`
echo
echo "Compactando $origem ..."
echo
# -r = recursivo, sub-pastas, pastas, etc.
zip -r "Backup_$data.zip" "$origem"
# E para tar.gz professor?
# tar -czf Backup_$data.tar.gz /diretorio/
echo
echo "Backup criado com sucesso em `pwd`"
echo
exit
