#!/bin/bash
crusr(){
	clear
	echo "Introdueix el nom del usuari que vols crear: "
	read user
	useradd  $user
}

cgrp(){
	clear
	echo "Introdueix el nom del grup a crear: "
	read grp
	addgroup $grp
}

afegr(){
	clear
	echo "Quin usuari vols afegir?: "
	read user
	echo "A quin usuari el vols afegir?: "
	read grp
	usermod -a -G $grp $user
}

esbgr(){
	clear
	echo "De quin grup vols eliminar l'usuari?: "
	read grp
	echo "Quin usuari vols treure del grup?: "
	read user
	sudo deluser $user $grp
}

menu(){
	clear
	echo "Introdueix quina funció vols realitzar:"
	echo "a) Crear Usuari"
	echo "b) Crear Grup"
	echo "c) Afegir Usuari a Grup"
	echo "d) Treu un usuari d'un grup"
	read opcio
	case "$opcio" in
		a)echo "Crear Usuari"
			crusr
		;;
		b)echo "Crear grup"
			cgrp
                ;;
		c)echo "Afegir Usuari a grup"
			afegr
                ;;
		d)echo "Treu un usuari d'un grup"
			esbgr
                ;;
		*) echo "Sortir de l'aplicacio"
			exit 0
	esac
}
#Aqui comença el programa

while true;
do
	menu
	echo "Vols realitzar alguna altre funció?: s/n"
	read cont
	if [[ $cont != "s" ]]
	then
		echo "Adeu!"
		exit 0
	fi
done
