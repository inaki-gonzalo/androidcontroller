#! /bin/bash
function deleteSession {
if [[ -d "currentSession" ]]
then 
	rm -r currentSession
fi
}
deleteSession
dirError=$(mkdir currentSession 2>&1)
if [[ ! "$dirError" == "" ]]
then
	echo "$dirError"
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
