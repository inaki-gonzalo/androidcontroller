trap 'echo "Go into command mode and press ."' INT
function commandModeEcho {
	echo 'You are in command mode
. terminate, [enter] enter, i insert mode,[home] home, arrows to navigate


'
}
function insertModeEcho {
        echo 'You are in insert mode
anything you type will be literally sent, [esc] command mode


'
}

commandModeEcho
while true;
do
    read -sn1 letter
    if [[ "$letter" == '' ]]
	then
		read -sn2 -t 0.1 temp
		var="$letter$temp"
		case "$var" in
		'[A')
			 echo 'up' >> ./commands
		;;
		'[B')
			 echo 'down' >> ./commands
			;;
		'[C')
			 echo 'right' >> ./commands
			;;
		'[D')
			 echo 'left' >> ./commands
			;;
		'[H')
			 echo 'home' >> ./commands
			;;


		*)
			echo "unknown"
		;;
		esac
	
	elif [[ "$letter" == "" ]]
                then
                        echo 'enter' >> ./commands
	elif [[ "$letter" == "i" ]]
                then
			commandMode="False"
			insertModeEcho
	elif [[ "$letter" == "" ]]
                then
                        echo 'back' >> ./commands
	elif [[ "$letter" == "."  ]];
		then
		echo "Exiting..."
		break
	fi


	while [[ "$commandMode" == "False" ]]
	do
		read -sn1 letter  
		if [[ "$letter" == '' ]]
       		then
			commandMode="True"
			commandModeEcho
		elif [[ "$letter" == "" ]]
		then 
			echo 'space' >> ./commands
		elif [[ "$letter" == "" ]]
		then 
			echo 'delete' >> ./commands
		
		else
			echo "$letter" >> ./commands
		fi
	done
done
