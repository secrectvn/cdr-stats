#!/bin/bash

if [ -z "${BRANCH}" ]; then
    BRANCH='master'
fi


#Get Scripts dependencies
cd /usr/src/
rm cdr-stats-functions.sh
wget --no-check-certificate https://raw.github.com/cdr-stats/cdr-stats/$BRANCH/install/cdr-stats-functions.sh -O cdr-stats-functions.sh

#Include cdr-stats install functions
source cdr-stats-functions.sh


#Identify the OS
func_identify_os

#Request the user to accept the license
func_accept_license


echo "========================================================================="
echo ""
echo "CDR-Stats installation will start now!"
echo ""
echo "Press Enter to continue or CTRL-C to exit"
echo ""
read INPUT

func_install_frontend
func_install_landing_page
func_install_backend

clear
echo ""
echo "Congratulations, CDR-Stats is now installed!"
echo "--------------------------------------------"
echo ""
echo "Please log on to CDR-Stats at "
echo "http://$IPADDR:$HTTP_PORT"
echo "the username and password are the ones you entered during this installation."
echo ""
echo "Thank you for installing CDR-Stats"
echo "Yours,"
echo "The Star2Billing Team"
echo "http://www.star2billing.com and http://www.cdr-stats.org/"
echo ""
echo "========================================================================="
echo ""


