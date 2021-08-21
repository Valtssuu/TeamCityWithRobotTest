robot --output original.xml flakytests.robot

# If tests pass first time exit, otherwise rerun
if [ $? -eq 0 ]; then
	echo "Everything ok on the first try!"
	exit 0	
fi

robot --rerunfailed original.xml --output rerun.xml flakytests.robot
rebot --merge original.xml rerun.xml
