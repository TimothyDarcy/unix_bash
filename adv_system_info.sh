#!/bin/bash
#Script Name: adv_system_info
#Author: Timothy D'Arcy
#Date Written: 28/10/18
#Date Last Modified: 28/10/18
#The purpose of this script is to return one or more of the following
#based on arguemnts passed in and retrieved using getopts. Flag is -o for option
#	number of cpu cores on the system
#		-o cores
#	current process priority in a readable format
#		-o priority
#	current user processes
#		-o proc
#	number of open file descriptors belonging to current user
#		-o file-des
#	default maximum number of file descriptors able to be opened by process
#		-o def-file-des


#while loop allows multiple flags to be entered
while getopts "o:" flag; do

#switch statement provides better readability than if else statement
	case $OPTARG in
		cores)
			echo "--Number of Cores and Sockets:"
			#lscpu prints cpu info, grep limits that info
			lscpu | grep -E 'Socket|Core\(s)'
			;;
		priority)
			echo "--Nice priority value:"
			nice
			;;
		proc)
			echo "--Current number of processes for user $USER:"
			#ps -u will print the processes for current user
			#awk counts the number of entries and prints out
			ps -u | awk '$USER {count++} END{print count}' 
			
			;;
		file-des)
			echo "--Current number of open file descriptors for $USER:"
			lsof -u $USER | wc -l
			;;
		def-file-des)
			echo "Default file descriptor number code"
			;;
	esac
done

