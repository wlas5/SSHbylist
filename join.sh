#!/bin/bash

regex="\b[0-9]{4}\b" #expressão regular para verificar se ID passado
		       # tá no formado correto
if [[ $1 =~ $regex ]]
then
	ip=$(cat ~/need/medidores.txt | grep $1 | awk '{ print $3 }')
	user=$(cat ~/need/medidores.txt | grep $1 | awk '{ print $1 }')
	if [[ $ip ]]
	then
        	echo "Medidor encontrado, acessando via ssh..."
        	sshpass -p "#senha_do_dispositivo" ssh $user@$ip
	else
        	echo "medidor nao encontrado"
	fi

else
	echo "Fortamo de ID incorreto! Tente de novo!"
fi


