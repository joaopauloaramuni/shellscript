#!/bin/bash
#Deletando regras existentes no firewall
#Antes de começar a criar novas regras, você deve limpar as regras padrões e demais regras existentes.
#Utilize o comando flush do iptables para isso.
#Lembrando que as regras de firewall devem ser sempre startadas e restartadas através de scripts ao iniciar e reiniciar um servidor,
#pois os comandos são perdidos no caso de falta de energia.
echo "Deletando regras existentes no firewall. "
iptables -F
#or iptables --flush
sleep 2
echo "Feito !"

