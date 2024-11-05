#!/bin/bash

# Ler a variavél digitada pelo usuário. A opção -p originalmente mostra uma mensagem na saída de erro padrão, se você não estiver redirecionando essa saída para o vácuo (/dev/null) ou para nenhum outro lugar, será apresentada na tela do console normalmente.

echo "Digite o número que queira saber se é par ou ímpar: "
read num

if [ $(($num%2)) -eq '0' ]; then
echo "$num é par"
else
echo "$num é impar"
fi
