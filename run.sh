SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")  
REPORTS_DIR=${REPORTS_DIR:-${DIR:-"."}}

pip3 install -r $DIR/required_packages.txt 1>/dev/null

robot .
