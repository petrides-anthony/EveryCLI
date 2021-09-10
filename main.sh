#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
 
# function to display menus
show_menus() {
	. ./bin/MenuText/menu-text.sh
}
# read input from the keyboard and take a action
# Exit when user the user select 5 form the menu option.
read_options(){
	local option
	read -p "                 Enter option [ 1 - 9 ] " option
	case $option in
		1) . ./bin/sub-menu.sh ;;
		2) . ./bin/set-npm-registry.sh && pause;;
		3) . ./bin/kill-port.sh && pause;;
		4) . ./bin/reload-zsh.sh ;;
		5) . ./bin/edit-zsh.sh && pause;;
		6) . ./bin/stop-mcafee.sh && pause;;
		7) . ./bin/about.sh && pause;;
		8) . ./main.sh ;;
		9) exit 0;;
		*) echo -e "${RED}Error...please select a valid option${STD}" && sleep 2
	esac
}
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
