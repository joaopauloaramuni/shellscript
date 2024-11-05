#!/bin/bash

# Script para verificar qual dos números de uma lista é o maior. 
# Exemplificação do uso do FOR EACH

# O for each é amplamente utilizado em praticamente todas as linguagens de programação.
# Trata-se de um loop para iterar em uma lista de objetos qualquer, neste caso, trata-se de uma lista de strings.

NUM="10 45 5 100 35 11"
MAIOR=0

# A variável i irá assumir o valor de cada item/objeto do array
for i in `echo $NUM`
do
   if [ $i -gt $MAIOR ]
     then
      MAIOR=$i
   fi
done

echo "O maior numero eh '$MAIOR'"
# Resposta: 100
