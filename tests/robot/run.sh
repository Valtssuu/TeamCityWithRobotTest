robot --output original.xml open_chrome.robot 

if [ $? -eq 0 ]; then
	echo "Everything ok on the first try!"
	exit 0	
fi

robot --rerunfailed original.xml --output rerun.xml open_chrome.robot
rebot --merge original.xml rerun.xml
