#!/bin/bash
#Script Name: adv_system_info
#Author: Timothy D'Arcy
#Date Written: 28/10/18
#Date Last Modified: 31/10/18
#The purpose of this script is to return one or more of the following
#based on option flags passed in.
#	number of cpu cores on the system
#		-c
#	current nice priority value
#		-n
#	current user processes
#		-p
#	number of open file descriptors belonging to current user
#		-f
#	default maximum number of file descriptors able to be opened by process
#		-m


#while loop allows multiple flags to be entered
while getopts "cnpfm" flag; do

#switch statement provides better readability than if else statement
	case "$flag" in
		c)
			echo "--Number of Cores and Sockets:"
			#lscpu prints cpu info, grep limits that info
			lscpu | grep -E 'Socket|Core\(s)'
			;;
		n)
			echo "--Nice priority value:"
			nice
			;;
		p)
			echo "--Current number of processes for user $USER:"
			#ps -u will print the processes for current user
			#awk counts the number of entries and prints out
			ps -u | awk '$USER {count++} END{print count}' 
			
			;;
		f)
			#lsof lists  open files -u for the current user
			#wc count the number of lines with the -l flag
			echo "--Current number of open file descriptors for $USER:"
			lsof -u "$USER" | wc -l
			;;
		m)	
			#ulimit is the user limits of system resources
			#-n displays max file descriptors
			echo "--Max number of file descriptors that can be opened by a process:"
			ulimit -n
			;;
		*)
			#triggers if no valid flag is entered
			echo "--Invalid flag, please try again"
			;;
	esac
done

