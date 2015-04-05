#! /bin/bash
trap '' INT
function deleteSession {
if [[ -d "currentSession" ]]
then 
	rm -r currentSession
fi
}
device=$(adb devices | awk 'NR==2{print $1}')
if [[ "$device" == "" ]]
then
	echo "No devices found, exiting..."
	exit 1
fi
echo "Attempting to connect to $device"

deleteSession
dirError=$(mkdir currentSession 2>&1)
if [[ ! "$dirError" == "" ]]
then
	echo "$dirError"
	echo "An Error occured, exiting..."
	exit 1
fi
cd currentSession
monkeyrunner ../monkeydriver.py &
echo "$!" >../monkeyrunner.pid
bash ../typer.sh
cd ..
deleteSession
if [[ -e monkeyrunner.pid && -s monkeyrunner.pid ]]
then
        kill -TERM $(cat monkeyrunner.pid)
        rm monkeyrunner.pid
fi

exit 0
