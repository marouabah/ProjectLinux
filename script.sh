#!/bin/bash
game=1
nb=0 
qst=0
answer=0
arrayqst=1
checkanswer=1

arrayqst1=("Quel_est_le_but_de_la_vie_?" "1:_Toi" "2:_Moi" "3:_Tous_ceux_qui_le_veulent" "4:_42 " "" "1")
arrayqst2=("Quel_est_la_bonne_réponse_?" "1:_pas_celle_la" "2: non_plus" "3:_celle_la" "4:_t'es_allé_trop_loin " "" "3")
arrayqst3=("Quel_sera_ma_note_pour_ce_projet_?" "1:_10/20" "2:_0/20" "3:_vu" "4:_peux_mieu_faire" "" "1")


function question() {
	case $qst in

		1)

			echo ""
			for t in ${arrayqst1[@]};
			do
				sleep 0.5
				echo $t
			done
			;;

		2)
                        echo ""
                        for t in ${arrayqst2[@]};
                        do
				sleep 0.5
                                echo $t
                        done
			;;

		3)
                        echo ""
                        for t in ${arrayqst1[@]};
                        do
				sleep 0.5
                                echo $t
                        done
			;;




		esac
		while [ $checkanswer == 1 ]
		do

			checkanswer
		done
		let "checkanswer=1"
		

}

function checkanswer() {
	echo "Votre réponse:"
	read answer

		
	if [ $answer -ne '1' ];
        then
                echo "Réponse invalide"
                echo "Réessayé"
                
	else
                checkanswer=0
		


        fi
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
			question
			qstnext
			;;

		*)
			qstnext
			;;	

	esac



	
	let "nb=nb+1"
	if [ $nb == 4 ];
	then
		let "game=0"
		echo "FIN DE PARTIE"
		
	fi
done
exit 0
