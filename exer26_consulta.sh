#!/bin/bash

echo "Bem vindo ao sistema de marcação online:"
echo
echo
# Se dou opção numérica é melhor, assim evitamos do usuário digitar errado ou com acentos
echo "Por favor digite a opção do turno desejado:"
echo
echo "1 - Manhã"
echo "2 - Tarde"
echo "3 - Noite"
echo # Espaço para não ficar embolado com a resposta
# Colhendo os dados do turno
read TURNO
# Ccoloca-se como alfanumérico porque não serão feitos cálculos
if [ "$TURNO" = "1" ];then
 echo "Apenas o Doutor Wagner atende no turno da manhã."
fi
if [ "$TURNO" = "2" ];then
 echo "Apenas a doutora Camila atende no turno da tarde."
fi
if [ "$TURNO" = "3" ];then
 echo "Apenas o Doutor Cesar atende no turno noite."
fi
# Fazendo o programa dormir por 2 segundos
sleep 2
echo
# Nesse espaço pode-se realizar a marcação naquele turno, gravando-se em um arquivo de agenda, etc.
echo "Sua consulta foi marcada com sucesso!"
# Dormindo para dar tempo de ler a mensagem e depois sai
sleep 4
# Saindo
exit
