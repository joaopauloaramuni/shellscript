#!/bin/bash

echo "Redirecionando as conexões da porta 80 para a porta 81 no firewall. "
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 81 
sleep 2
echo "Feito !"

# Parâmetros: -t= tabela para manipular (no caso a tabela NAT)
# -A = Anexar um comando a cadeia; 
# -i=inserir nome da interface( eth0 é a placa de rede local); 
# -p=protocolo (TCP); 		--dport=porta destino (80)
# -j=objeto para mudança (Redirect)
# --to-port= para qual porta vai mudar (81)
