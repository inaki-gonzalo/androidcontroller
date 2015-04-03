echo "You are in command mode, execute something"
while true;
do
    read -sn1 letter
    if [[ "$letter" == '' ]]
	then
		read -sn2 temp
		var="$letter$temp"
		case "$var" in
		'[A')
			 echo 'up'
			 echo 'up' >> ./commands
		;;
		'[B')
			 echo 'down'
			 echo 'down' >> ./commands
			;;
		'[C')
			 echo 'right'
			 echo 'right' >> ./commands
			;;
		'[D')
			 echo 'left'
			 echo 'left' >> ./commands
			;;
		'[H')
			 echo 'home'
			 echo 'home' >> ./commands
			;;


		*)
			echo "unknown"
		;;
		esac
	
	elif [[ "$letter" == "" ]]
                then
                        echo 'enter' >> ./commands
			echo 'enter'
	elif [[ "$letter" == "i" ]]
                then
			commandMode="False"
	elif [[ "$letter" == "" ]]
                then
                        echo back
                        echo 'back' >> ./commands
	elif [[ "$letter" == "."  ]];
		then
		echo "escape"
		break
	fi


	while [[ "$commandMode" == "False" ]]
	do
		read -sn1 letter  
		if [[ "$letter" == '' ]]
       		then
			commandMode="True"
		elif [[ "$letter" == "" ]]
		then 
			echo 'space' >> ./commands
			echo 'space'
		elif [[ "$letter" == "" ]]
		then 
			echo delete
			echo 'delete' >> ./commands
		
		else
			echo "$letter" >> ./commands
		fi
	done
done
