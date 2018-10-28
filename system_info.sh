#! /bin/bash
#Script Name: system_info.sh
#Author: Timothy D'Arcy
#Date Written: 28/10/18
#Data Last Modified: 28/10/18
#The purpose of this script is tell the user one of the following based 
#on the arguement passed:
#	Amount of Free and Occupied memory 
#		memory
#	Amount of Free and Occupied disk space 
#		disk
#	Connection information including IP and MAC address at minimum
#		connection
#	The amount of time the system has been running 
#		time



#if statements to check which option to execute
if [ "$1" =  "memory" ] ; then
	#memory code
	echo "Memory Status in MB"
	#free command shows memory
	#-m give it in MB
	free -m

elif [ "$1" = "disk" ] ; then
	#disk code
	echo "Disk Status in MB and GB"
	#df displays disk information
	#-h makes it human readable
	df -h 
elif [ "$1" = "connection" ] ; then
	#connection code
	echo "connection code"
	#ss displays socket information
	# -l for listening sockets
	# -t for connected sockets
	# -n to give port number
	ss -ltn
elif [ "$1" = "time" ] ; then
	#time code
	echo "time code"
	#uptime display time up and other information
	#-p limits to time up
	uptime -p
else
	echo "Error, no option selected"
	echo "Please enter memory, disk, connection or time as a parameter when running this program"
fi
	



