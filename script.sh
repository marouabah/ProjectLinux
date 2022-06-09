#!/bin/bash
game=1
nb=0 
qst=0
answer=''
array=("Quel est le but de la vie ?" "d")
function question() {
	for i in ${!array[@]}; do
		for x in ${arrayquestion[@]}
		echo "${array[$x]}"
}

function checkanswer() {
	echo "Votre réponse:"
	read -p  temp
	let "answer=temp"
	
		
	if [ $answer=='a' ] || [ $answer=='b' ] || [ $answer=='c' ] || [ $answer=='d' ];
        then
		echo "la réponse est correct"
	else
                let "answer= "
                echo "Réponse invalide"
		echo "Réessayé"
		let "qst=qst-1"

        fi

	echo " ca CHECK	"
}


function qstnext() {
	echo "QST $qst"
	let "qst=qst+1"
}




while [ $game == 1 ]
do
	sleep 1
	case $qst in

		0)

			echo "
	
  ____  __  ______________
 / __ \/ / / /  _/_  /_  /
/ /_/ / /_/ // /  / /_/ /_
\___\_\____/___/ /___/___/
                          

		"
			let "qst=qst+1"	
			;;

		1)
			
			question
			qstnext
			;;

		2)
			qstnext
			;;

		*)
			qstnext
			;;	

	esac



	echo "Vous etes en jeu"
	echo $nb
	let "nb=nb+1"
	if [ $nb == 5 ];
	then
		let "game=0"
		echo "FIN DE PARTIE"
		
	fi
done
exit 0
