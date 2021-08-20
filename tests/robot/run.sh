robot --output output.xml .

if [ $? -eq 0 ]; then
	echo "Everything ok on the first try!"
	exit 0	
fi

robot --outputdir output --nostatusrc --rerunfailed output.xml --output rerun.xml


