#!/bin/bash
#Algoritmo que calcula o fatorial de um
#número fornecido pelo usuário
#O fatorial é cálculado da seguinte forma:
#fatorial de 3: 3x2x1 = 6
#fatorial de 4: 4x3x2x1 = 24

echo "Digite o número que queira saber o fatorial: "
read num

#Iniciando a variável fatorial(fat)
fat=1

#O contador i inicia com o número 1 e o loop será
#executado mediante seu valor ser menor igual ao valor
#da variável $num
for ((i=1; i <= $num ; i++))
do
#Aqui é utilizada a variável $fat que será multiplicado
#pela variável $i(contador) até o fim do loop

    fat=$(($fat*$i))

done

echo "O fatorial de $num é: $fat "
