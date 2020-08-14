#!/bin/bash

echo "Apagar todo conteúdo do diretório /tmp toda sexta-feira, as 4:30 da manhã: "
sleep 2
if echo "30 4 * * fri rm -rf /tmp/* " > /var/spool/cron/root
	then
		echo ""
		echo "===================================="
		echo "Agendado com sucesso!"
		echo "===================================="
		echo ""
	else
    echo "Falha ao agendar contate o administrador do sistema"
fi

# Aqui está dizendo: “Apagar todo conteúdo do diretório /tmp toda sexta-feira, as 4:30 da manhã.“. 

# 1º. Minuto 		4º. Mês
# 2º. Hora			5º. Dia da semana
# 3º. Dia do mês	6º. Programa para a Execução
