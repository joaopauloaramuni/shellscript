data=$(dialog --stdout --title 'Escolha a data' --calendar '' 0 0 18 04 2018)
dia=$(echo $data | cut -d '/' -f 1)
mes=$(echo $data | cut -d '/' -f 2)

if echo "* * $dia $mes * sh teste.sh " > /var/spool/cron/root
	then
		echo "Agendado com sucesso!"
	else
    echo "Falha ao agendar contate o administrador do sistema"
fi
