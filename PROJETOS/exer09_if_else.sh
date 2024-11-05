#!/bin/bash

resp=""
echo -e "Seu programa funciona? 0-Sim / 1-Nao"
read resp

if [ $resp -eq 0 ]
  then
    #bloco verdade
    echo -e "Ok."
  else
    #bloco falso
    echo -e "Foi você que estragou? 0-Sim / 1-Nao"
    read resp
    if [ $resp -eq 0 ]
      then
        #bloco verdade
        echo "Putz..."
        echo -e "Alguem sabe que foi você? 0-Sim / 1-Nao"
        read resp
        if [ $resp -eq 0 ]
	  then
            #bloco verdade
	    echo "Negue."
            resp=1
            while [ $resp -eq 1 ]
      	      do  
                echo -e "Da pra jogar a culpa em alguem? 0-Sim / 1-Nao"
                read resp
	      done
	  else
	    #bloco falso
	    echo "Esconda!"
        fi
        
      else
        #bloco falso
        echo -e "Alguem pode te culpar? 0-Sim / 1-Nao"
        read resp
        if [ $resp -eq 0 ]
          then
            #bloco verdade
	    echo "Putz..."
            resp=1
            while [ $resp -eq 1 ]
      	      do  
                echo -e "Da pra jogar a culpa em alguem? 0-Sim / 1-Nao"
                read resp
	      done
	  
          else
  	    #bloco falso
   	    echo -e "Então não se preocupe."
        fi
 
    fi    

fi

#mensagem final
echo -e "Sem Problemas."

