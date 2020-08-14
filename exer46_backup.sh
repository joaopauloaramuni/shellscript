#/bin!/bash
#Script De Backup
#
#
#
# Variáveis
# LOCAL(para onde os cados vão ser copiados) ORIGEM (De onde os dados vão ser copiados)
# NOME (Nome da subpasta dentro de BKP onde será armazenado o backup)

LOCAL=/bkp
ORIGEM=/home/aluno
NOME=backup_`date +%d-%m-%y"as"%H:%M"hs"`


#Verificando se a pasta para onde os dados serão transferidos existe.(bkp)
if [ -d $LOCAL ]
#Se a pastar existir exibe mensagem abaixo 
 then
    echo ""
    echo "Pasta bkp checada o backup pode ser iniciado."
#Se a pasta não existe exibe mensagem e cria a pasta bkp
 else
    echo ""
    echo "Pasta bkp não encontrada, criando pasta para iniciar o backup."
#If testa se a pasta foi criada com sucesso.
  if mkdir $LOCAL 2> /home/aluno/Desktop/arquivo_log #Encaminha o erro caso exista para o arquivo de log.
#Se a pasta foi criada com sucesso exibe mensagem.
   then
      echo ""
      echo "Pasta criada com sucesso!!"
#Se a pasta não foi criada com sucesso exibe mensagem e encerra o script.
   else
      echo ""
      echo "Erro ao criar pasta, contate o administrador"
exit 1
  fi
fi

#Dentro da pasta bkp será criada uma  subpasta (bkp_data e hora) 
#onde será armazenado os dados do backup

#If testa se pasta foi realmente foi criada.
if mkdir $LOCAL/$NOME 2> /home/aluno/Desktop/arquivo_log #Encaminha o erro caso exista para o arquivo de log.
#Se a pasta foi criada com sucesso exibe mensagem 
   then 
     echo ""
     echo "Pasta" $NOME "criada com sucesso!!"
#Se a pasta não foi criada com sucesso exibe mensagem e finaliza o script
   else
     echo ""
     echo "Falha ao criar pasta contate o administrador do sistema"
exit 3
fi

#Busca a pasta var e subpastas para compactar e move os arquivos compactados para pasta backup_dataehora
echo ""
echo -e "Compactando arquivos...."
if find $ORIGEM/* -maxdepth 1 -mindepth 1 -type d | while read f
   do tar -czf "$f.tar.gz" "$f" && mv "$f.tar.gz" /$LOCAL/$NOME
   done 2> /home/aluno/Desktop/arquivo_log #Encaminha o erro caso exista para o arquivo de log
 then
   echo ""
   echo "Arquivos compactados!"
 else
   echo ""
   echo "Falha ao compactar dados para cópia contate o administrador do sistema"

exit 4
fi
echo ""
echo "Finalizando backup..."
if tar -czf $LOCAL/$NOME.tar.gz $LOCAL/$NOME 2> /home/aluno/Desktop/arquivo_log #Encaminha o erro caso exista para o arquivo de log 
 then 
  echo ""
  echo "Verificando backup..removendo arquivos desnecessários"
  rm -rf $LOCAL/$NOME 2> /home/aluno/Desktop/arquivo_log #Encaminha o erro caso exista para o arquivo de log 
 else
  echo ""
  echo "Falha ao finalizar backup contate o administrador do sistema."

exit 6
fi

echo ""
echo "=============================="
echo "BACKUP REALIZADO COM SUCESSO!!"
echo "=============================="
echo ""
echo "Agendando próximo bakcup..."
#Edita arquivo crontab para o usuário e o root (para sexta feira a 00:00Hs) 
if echo "00 00 * * fri /home/aluno/Desktop/Autoinstrucional" > /var/spool/cron/root && echo "00 00 * * fri /home/aluno/Desktop/Autoinstrucional" > /var/spool/cron/aluno 2> /home/aluno/Área\ de\ trabalho/arquivo_log #Encaminha o erro caso exista para o arquivo de log
  then
     echo ""
     echo "===================================="
     echo "Próximo bakcup agendado com sucesso."
     echo "===================================="
     echo ""
  else
     echo "Falha ao agendar backup contate o administrador do sistema"
fi
 







