function commandModeEcho {
	echo 'You are in command mode
. to terminate
enter to enter
i to go into insert mode
backspace to go back
home to go home
use arrow to navigate


'
}
commandModeEcho
while true;
do
    read -sn1 letter
    if [[ "$letter" == '' ]]
	then
		read -sn2 temp
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
			echo 'Entering insertMode
anything you type will be literally sent,
press esc to go back to command mode


'
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
