#!/bin/bash

# Função que cadastra o CPF
CADASTRO(){
 echo "Digite seu CPF: "
 read CPF
 echo
 echo "Cadastro finalizado com sucesso!"
 LOGANDO # Agora chamamos a função de logar
}
LOGANDO(){
 echo
 echo "Digite seu CPF para logarmos: "
 read CPF2
 echo
 # Aqui comparo os CPFs como texto
 if [ "$CPF" = "$CPF2" ];then # Se CPF digitado anteriormente é igual ao agora, então logue
 echo "Logado com sucesso!"
 sleep 5
 exit # Depois de dormir 5 segundos ele sai porque já alcançamos os nossos objetivos
 else # Senão for igual, durma e chame CADASTRO, para recebermos o cpf novamente
 echo "CPF incorreto, por favor tente novamente!"
 sleep 3 # Dando uma dormida para dar tempo do usuário ler a mensagem de erro
 CADASTRO
 fi
}
# O shell vai ler as duas funções, depois passa por aqui chamando a função CADASTRO
CADASTRO
# A única forma do usuário sair do script é digitando o CPF corretamente, se fosse um script para empresa é claro que colocaríamos outras opções
