#!/bin/bash
echo "You are in command mode, execute something"
while true;
do
	read -sn1 letter
	if [[ "$letter" == '' ]]
	then
		read -sn2 temp
		letter="$letter$temp"
		case "$letter" in
		 '[A')
		        echo 'up'
			input keyevent 19
		;;
		'[B')
		         echo 'down'
			input keyevent 20
		;;
		'[C')
		         echo 'right'
			input keyevent 22
		;;
		'[D')
		         echo 'left'
			input keyevent 21
		;;


		*)
		        echo "unknown"
		;;
		esac
	else
		if [[ "$letter" == "e"  ]]; 
		then
		echo "enter"
		input keyevent 66
		elif [[ "$letter" == "b"  ]]; 
		then
		echo "back"
		input keyevent 4
		elif [[ "$letter" == "h"  ]]; 
		then
		echo "home"
		input keyevent 3
		elif [[ "$letter" == "x"  ]]; 
		then
		echo "escape"
		break
	
		elif [[ "$letter" == "i"  ]]; 
		then
		echo "insert mode"
			while true;
				do
				read -sn1 letter
				if [[ "$letter" == "a"  ]]; 
				then
					input keyevent 29
				elif [[ "$letter" == "b"  ]]; 
				then
					input keyevent 30
				elif [[ "$letter" == "c"  ]]; 
				then
					input keyevent 31
				elif [[ "$letter" == "d"  ]]; 
				then
				
					input keyevent 32
				elif [[ "$letter" == "e"  ]]; 
				then
				
					input keyevent 33
				elif [[ "$letter" == "f"  ]]; 
				then
				
					input keyevent 34
				elif [[ "$letter" == "g"  ]]; 
				then
				
					input keyevent 35
				elif [[ "$letter" == "h"  ]]; 
				then
				
					input keyevent 36
				elif [[ "$letter" == "i"  ]]; 
				then
				
					input keyevent 37
				elif [[ "$letter" == "j"  ]]; 
				then
				
					input keyevent 38
				elif [[ "$letter" == "k"  ]]; 
				then
				
					input keyevent 39
				elif [[ "$letter" == "l"  ]]; 
				then
				
					input keyevent 40
				elif [[ "$letter" == "m"  ]]; 
				then
				
					input keyevent 41
				elif [[ "$letter" == "n"  ]]; 
				then
				
					input keyevent 42
				elif [[ "$letter" == "o"  ]]; 
				then
				
					input keyevent 43
				elif [[ "$letter" == "p"  ]]; 
				then
				
					input keyevent 44
				elif [[ "$letter" == "q"  ]]; 
				then
				
					input keyevent 45
				elif [[ "$letter" == "r"  ]]; 
				then
				
					input keyevent 46
				elif [[ "$letter" == "s"  ]]; 
				then
					echo "a"
					input keyevent 47
				elif [[ "$letter" == "t"  ]]; 
				then
				
					input keyevent 48
					elif [[ "$letter" == "u"  ]]; 
				then
				
					input keyevent 49
					elif [[ "$letter" == "v"  ]]; 
				then
				
					input keyevent 50
					elif [[ "$letter" == "w"  ]]; 
				then
				
					input keyevent 51
					elif [[ "$letter" == "x"  ]]; 
				then
				
					input keyevent 52
				elif [[ "$letter" == "y"  ]]; 
				then
				
					input keyevent 53
					elif [[ "$letter" == "z"  ]]; 
				then
				
					input keyevent 54
					elif [[ "$letter" == ""  ]]; 
				then
					echo "space"
					input keyevent 62
				elif [[ "$letter" == ""  ]]; 
				then
					echo "delete"
					input keyevent 67
				elif [[ "$letter" == "."  ]]; 
				then
					echo "scape"
					break
				fi
				done
	
			fi
		fi

done
echo "Thanks…Processing Your Information Now"
echo "this was your input $letter"
