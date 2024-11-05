#!/bin/bash

#Porta dos Desesperados

portaEscolhida=0
portaSemPremio=0
portaComPremio=0

#Caso a porta escolhida seja também a porta com prêmio, sobrará uma porta
portaQueSobrou=0

#O usuário saberá que uma das portas não possui prêmio, e poderá escolher entre a porta premiada e a porta que já havia escolhido.
#É claro, sem saber em qual das duas portas está o prêmio.
trocarPorta=""

#Sorteia a porta com o prêmio
portaComPremio=$(( $RANDOM % 3+1 ))

#Escolhe uma porta (33,3% de chance de acertar de cara)
echo "Escolha uma porta: [ 1 ] [ 2 ] [ 3 ]"
read portaEscolhida

#Sorteia um número de 1 a 3 até que a condição seja atendida (ser o único número não escolhido pelo usuário nem pelo sistema)

portaSemPremio=$(( $RANDOM % 3+1 ))

while [[ $portaSemPremio -eq $portaComPremio || $portaSemPremio -eq $portaEscolhida ]]
do
	portaSemPremio=$(( $RANDOM % 3+1 ))
done

#Ok. Agora temos a porta com o prêmio, a porta que o usuário escolheu, e a porta não escolhida que está sem prêmio

#Estatísticamente falando, sua chance de acertar trocando a porta é de 66,6%, enquanto a chance de ganhar o prêmio permanecendo na mesma porta escolhida ao início, é de apenas 33,3%. A partir do momento que uma porta é revelada como sem prêmio, uma nova informação é inserida no algoritmo, dobrando suas chances de vencer.

if [ $portaEscolhida -eq $portaComPremio ]
then

portaQueSobrou=$(( $RANDOM % 3+1 ))

while [[ $portaQueSobrou -eq $portaComPremio || $portaQueSobrou -eq $portaSemPremio ]]
do
	portaQueSobrou=$(( $RANDOM % 3+1 ))
done

#Neste caso, o usuário está com a porta com prêmio, se trocar de porta irá perder o prêmio.
echo "A porta: [ $portaSemPremio ] não tem prêmio. Deseja trocar a porta [ $portaEscolhida ] pela porta: [ $portaQueSobrou ] ? S / N" 
read trocarPorta


	if [ "$trocarPorta" = "S" ] 
	then
		echo "Voce trocou a porta $portaEscolhida pela porta $portaQueSobrou !"
		portaEscolhida=$portaQueSobrou
	fi

else
	
#Neste caso, o usuário não está com a porta com prêmio, se trocar de porta irá ganhar o prêmio.

echo "A porta: [ $portaSemPremio ] não tem prêmio. Deseja trocar a porta [ $portaEscolhida ] pela porta: [ $portaComPremio ] ? S / N" 
read trocarPorta	

	if [ "$trocarPorta" = "S" ] 
	then
		echo "Voce trocou a porta $portaEscolhida pela $portaComPremio !"
		portaEscolhida=$portaComPremio
	fi
	
fi

#Dois jeitos de vencer, permanecendo com a porta ou trocando de porta
if [ $portaEscolhida -eq $portaComPremio ] && [ "$trocarPorta" = "N" ] 
then
	echo "VOCÊ GANHOU !!! O prêmio estava na porta: [ $portaComPremio ]. Deu sorte pois a chance de ganhar era de apenas 33,3% neste caso."
elif [ $portaEscolhida -eq $portaComPremio ] && [ "$trocarPorta" = "S" ] 
then
	echo "VOCÊ GANHOU !!! O prêmio estava na porta: [ $portaComPremio ]. Boa escolha ao trocar! A chance de ganhar era de 66,6% neste caso."
#Dois jeitos de perder, permanecendo com a porta ou trocando de porta
elif [ $portaEscolhida != $portaComPremio ] && [ "$trocarPorta" = "N" ] 
then
    echo "VOCÊ PERDEU !!! O prêmio estava na porta: [ $portaComPremio ]. Deveria ter trocado de porta pois a chance era de 66% neste caso."
elif [ $portaEscolhida != $portaComPremio ] && [ "$trocarPorta" = "S" ] 
then
	echo "VOCÊ PERDEU !!! O prêmio estava na porta: [ $portaComPremio ]. Se deu mal, não deveria ter trocado de porta, apesar de que as chances eram maiores, 66,6% de chance de ganhar. Você caiu nos outros 33,3%."
else
	echo "Erro! Dados foram inseridos incorretamente pelo usuário."
fi







