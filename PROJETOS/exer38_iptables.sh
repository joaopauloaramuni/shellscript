#!/bin/bash
#As seguintes regras permitem que todo o tráfego web de entrada e saída HTTP aconteça pela porta 80.
#Conexão ethernet - eth0 (placa de rede do servidor, que recebe o link de internet).
#Conexão ethernet - eth1 (placa de rede do servidor, que distribui o link para outras máquinas).
echo "Permitir entrada HTTP e HTTPS"
iptables -A INPUT -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o eth0 -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT
sleep 2
echo "Feito !"
