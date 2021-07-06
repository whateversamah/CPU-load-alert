#!/bin/bash 
#######################################################################################
#Script Name    :loadcpu.sh
#Description    :send alert mail when CPU's charge in the last 5 minutes is bigger than 20.
#Email          :admin1@gmail.com
#License       : GNU GPL-3	
#######################################################################################
## declare mail variables
##email subject 
subject="Server Memory Status Alert"
##sending mail as
from="server.monitor@example.com"
## sending mail to
to="admin1@gmail.com"
## send carbon copy to
also_to="admin2@example.com"

load=$uptime | awk {print $9}'

if [ $load > 20]; then
        ## send email if CPU's charge in the last 5 minutes is bigger than 20.
        echo -e "Warning, CPU's charge in the last 5 minutes is bigger than 20.| mailx -a "$file" -s "$subject" -r "$from" -c "$to" "$also_to"
fiahkaoutar