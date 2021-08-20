SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")  
REPORTS_DIR=${REPORTS_DIR:-${DIR:-"."}}

pip3 install -r $DIR/required_packages.txt 1>/dev/null
robot --output original.xml .

if [ $? -eq 0 ]; then
	echo "Everything ok on the first try!"
	exit 0	
fi

robot --outputdir output --nostatusrc --rerunfailed output/output.xml --output rerun.xml


