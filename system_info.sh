#! /bin/bash
#The purpose of this script is tell the user one of the following based 
#on the arguement passed:
#	Amount of Free and Occupied memory 
#	-- memory
#	Amount of Free and Occupied disk space 
#	-- disk
#	Connection information including IP and MAC address at minimum
#	-- connection
#	The amount of time the system has been running 
#	-- time



#if statements to check which option to execute
if [ "$1" =  "memory" ] ; then
	#memory code
	echo "memory code"

elif [ "$1" = "disk" ] ; then
	#disk code
	echo "disk code"

elif [ "$1" = "connection" ] ; then
	#connection code
	echo "connection code"

elif [ "$1" = "time" ] ; then
	#time code
	echo "time code"
else
	echo "Error, no option selected"
	echo "Please enter memory, disk, connection or time as a parameter when running this program"
fi
	



