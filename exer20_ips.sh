#!/bin/bash
#Algoritmo que executa testes de ping para um range de IPs e ao
#final mostra a quantidade total de hosts.

echo "-----------------------------------"
echo "   ALGORITMO TESTAR IP         "
echo "-----------------------------------"
echo

# Iniciando a variável contador (con)
con=0

# Aqui deve ser informado a rede. Ex.: 192.168.1 ou 192.168.2 e assim por diante
echo -n "Informe a rede: "
read rede

# Informe o IP inicial do teste
echo -n "Informe o IP inicial: "
read ipini

# Informe o IP final do teste
echo -n "Informe o IP final: "
read ipfim

# Cálculo de quantos IPs receberam o teste de ping
# também será usado para fazer uma comparação com o contador
# na estrutura de repetição
calc=$(($ipfim-$ipini))

# O primeiro teste da estrutura while vai ser com o primeiro
# IP informado pelo usuário. Assim que o laço começar a ser
# executado, este IP inicial será somado com o contador
# até atingir o total de hosts que deve ser "pingado"
sufixo="$ipini"

while [ $con -le $calc ]
do
# Aqui o comando 'ping' executará um teste em cada host utilizando a
# opção -c1 e será unido à variável $rede e $sufixo onde esta última
# contém o IP dentro do range a ser testado

# A opção -c1 é utilizada para que o comando ping envie 
# apenas um pacote ICMP ECHO REQUEST ao destino testado

    echo `ping -c1 $rede.$sufixo`

    con=$(($con + 1))
    sufixo=$(($ipini+$con))

done

sleep 2

echo "--------------------------------"
echo "    FIM DOS TESTES         "
echo "--------------------------------"
echo
echo "-> Total de IPs testados: $con"
